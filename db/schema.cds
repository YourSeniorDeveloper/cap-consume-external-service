namespace cap_ext_serv;

using { ODataWebV4.Northwind.Model.Products as NorthwindProducts } from '../srv/external/Northwind';
using { ODataWebV4.Northwind.Model.Order_Details as NorthwindOrderDetails } from '../srv/external/Northwind';

entity ExternalProd as projection on NorthwindProducts {
  key ProductID : Integer ,
  ProductName : LargeString,
  SupplierID : Integer,
  CategoryID : Integer,
  QuantityPerUnit : LargeString,
  UnitPrice : Decimal,
  UnitsInStock : Integer,
  UnitsOnOrder : Integer,
  ReorderLevel : Integer,
  Discontinued : Boolean,
  Order_Details : Association to many ExternalOrderDetails on ProductID = $self.ProductID ,
  
    
}

entity ExternalOrderDetails as projection on NorthwindOrderDetails{
    *
}
