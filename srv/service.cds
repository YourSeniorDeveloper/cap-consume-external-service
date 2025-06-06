using { cap_ext_serv as my } from '../db/schema.cds';

@path : '/service/cap_ext_servService'
service cap_ext_servService
{
    @readonly entity ExternalProd as
        projection on my.ExternalProd;
    
    @readonly entity ExternalOrderDetails as
        projection on my.ExternalOrderDetails;
}

annotate cap_ext_servService with @requires :
[
    'authenticated-user'
];
