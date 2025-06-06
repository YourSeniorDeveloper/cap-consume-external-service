namespace cap_ext_serv;

using { ODataWebV4.Northwind.Model.Products as NorthwindProducts } from '../srv/external/Northwind';


entity ExternalProd as projection on NorthwindProducts {
    *
}


