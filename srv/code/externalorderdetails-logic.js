/**
 * 
 * @On(event = { "READ" }, entity = "cap_ext_servService.ExternalOrderDetails")
 * @param {cds.Request} request - User information, tenant-specific CDS model, headers and query parameters
 * @param {Function} next - Callback function to the next handler
*/
module.exports = async function(request, next) {
	// Your code here

    const northwindService = await cds.connect.to('ODataWebV4.Northwind.Model');

    const { Order_Details } = northwindService.entities;

    const externalOrder_Details = await northwindService.run(request.query);

    if (!externalOrder_Details) {
        return [];
    }

    // Return the fetched data
    return externalOrder_Details;	

}