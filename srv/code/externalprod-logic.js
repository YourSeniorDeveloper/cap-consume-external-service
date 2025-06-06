/**
 * 
 * @On(event = { "READ" }, entity = "cap_ext_servService.ExternalProd")
 * @param {cds.Request} request - User information, tenant-specific CDS model, headers and query parameters
 * @param {Function} next - Callback function to the next handler
*/
module.exports = async function(request, next) {
    // Connect to the external Northwind service
    const northwindService = await cds.connect.to('ODataWebV4.Northwind.Model');

    // Get the external entity identifier for Products
    //const { Products } = northwindService.entities;

    // Fetch data from the external Northwind Products entity
    //const externalProducts = await northwindService.run(SELECT.from(Products));
    const externalProducts = await northwindService.run(request.query);

    // If externalProducts is undefined, return an empty array
    if (!externalProducts) {
        return [];
    }

    // Return the fetched data
    return externalProducts;
}