/* checksum : 0781d443fe542b3d3bdfed3a7da84843 */
@cds.external : true
@cds.persistence.skip : true
entity NorthwindModel.Category_Sales_for_1997 {
  key CategoryName : LargeString not null;
  CategorySales : Decimal;
};

@cds.external : true
@cds.persistence.skip : true
entity NorthwindModel.Product_Sales_for_1997 {
  key CategoryName : LargeString not null;
  key ProductName : LargeString not null;
  ProductSales : Decimal;
};

@cds.external : true
service ODataWebV4.Northwind.Model {};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Categories {
  key CategoryID : Integer not null;
  CategoryName : LargeString;
  Description : LargeString;
  Picture : LargeBinary;
  Products : Association to many ODataWebV4.Northwind.Model.Products {  };
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.CustomerDemographics {
  key CustomerTypeID : LargeString not null;
  CustomerDesc : LargeString;
  Customers : Association to many ODataWebV4.Northwind.Model.Customers {  };
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Customers {
  key CustomerID : LargeString not null;
  CompanyName : LargeString;
  ContactName : LargeString;
  ContactTitle : LargeString;
  Address : LargeString;
  City : LargeString;
  Region : LargeString;
  PostalCode : LargeString;
  Country : LargeString;
  Phone : LargeString;
  Fax : LargeString;
  Orders : Association to many ODataWebV4.Northwind.Model.Orders {  };
  CustomerDemographics : Association to many ODataWebV4.Northwind.Model.CustomerDemographics {  };
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Employees {
  key EmployeeID : Integer not null;
  LastName : LargeString;
  FirstName : LargeString;
  Title : LargeString;
  TitleOfCourtesy : LargeString;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  BirthDate : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  HireDate : DateTime;
  Address : LargeString;
  City : LargeString;
  Region : LargeString;
  PostalCode : LargeString;
  Country : LargeString;
  HomePhone : LargeString;
  Extension : LargeString;
  Photo : LargeBinary;
  Notes : LargeString;
  ReportsTo : Integer;
  PhotoPath : LargeString;
  Employees1 : Association to many ODataWebV4.Northwind.Model.Employees {  };
  Employee1 : Association to one ODataWebV4.Northwind.Model.Employees {  };
  Orders : Association to many ODataWebV4.Northwind.Model.Orders {  };
  Territories : Association to many ODataWebV4.Northwind.Model.Territories {  };
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Order_Details {
  key OrderID : Integer not null;
  key ProductID : Integer not null;
  UnitPrice : Decimal not null;
  Quantity : Integer not null;
  @odata.Type : 'Edm.Single'
  Discount : Double not null;
  Order : Association to one ODataWebV4.Northwind.Model.Orders {  };
  Product : Association to one ODataWebV4.Northwind.Model.Products {  };
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Orders {
  key OrderID : Integer not null;
  CustomerID : LargeString;
  EmployeeID : Integer;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  OrderDate : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  RequiredDate : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  ShippedDate : DateTime;
  ShipVia : Integer;
  Freight : Decimal;
  ShipName : LargeString;
  ShipAddress : LargeString;
  ShipCity : LargeString;
  ShipRegion : LargeString;
  ShipPostalCode : LargeString;
  ShipCountry : LargeString;
  Customer : Association to one ODataWebV4.Northwind.Model.Customers {  };
  Employee : Association to one ODataWebV4.Northwind.Model.Employees {  };
  Order_Details : Association to many ODataWebV4.Northwind.Model.Order_Details {  };
  Shipper : Association to one ODataWebV4.Northwind.Model.Shippers {  };
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Products {
  key ProductID : Integer not null;
  ProductName : LargeString;
  SupplierID : Integer;
  CategoryID : Integer;
  QuantityPerUnit : LargeString;
  UnitPrice : Decimal;
  UnitsInStock : Integer;
  UnitsOnOrder : Integer;
  ReorderLevel : Integer;
  Discontinued : Boolean not null;
  Category : Association to one ODataWebV4.Northwind.Model.Categories {  };
  Order_Details : Association to many ODataWebV4.Northwind.Model.Order_Details {  };
  Supplier : Association to one ODataWebV4.Northwind.Model.Suppliers {  };
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Regions {
  key RegionID : Integer not null;
  RegionDescription : LargeString;
  Territories : Association to many ODataWebV4.Northwind.Model.Territories {  };
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Shippers {
  key ShipperID : Integer not null;
  CompanyName : LargeString;
  Phone : LargeString;
  Orders : Association to many ODataWebV4.Northwind.Model.Orders {  };
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Suppliers {
  key SupplierID : Integer not null;
  CompanyName : LargeString;
  ContactName : LargeString;
  ContactTitle : LargeString;
  Address : LargeString;
  City : LargeString;
  Region : LargeString;
  PostalCode : LargeString;
  Country : LargeString;
  Phone : LargeString;
  Fax : LargeString;
  HomePage : LargeString;
  Products : Association to many ODataWebV4.Northwind.Model.Products {  };
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Territories {
  key TerritoryID : LargeString not null;
  TerritoryDescription : LargeString;
  RegionID : Integer not null;
  Region : Association to one ODataWebV4.Northwind.Model.Regions {  };
  Employees : Association to many ODataWebV4.Northwind.Model.Employees {  };
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Alphabetical_list_of_products {
  key ProductID : Integer not null;
  key ProductName : LargeString not null;
  SupplierID : Integer;
  CategoryID : Integer;
  QuantityPerUnit : LargeString;
  UnitPrice : Decimal;
  UnitsInStock : Integer;
  UnitsOnOrder : Integer;
  ReorderLevel : Integer;
  key Discontinued : Boolean not null;
  key CategoryName : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Category_Sales_for_1997 {
  key CategoryName : LargeString not null;
  CategorySales : Decimal;
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Current_Product_Lists {
  key ProductID : Integer not null;
  key ProductName : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Customer_and_Suppliers_by_Cities {
  City : LargeString;
  key CompanyName : LargeString not null;
  ContactName : LargeString;
  key Relationship : LargeString not null;
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Invoices {
  ShipName : LargeString;
  ShipAddress : LargeString;
  ShipCity : LargeString;
  ShipRegion : LargeString;
  ShipPostalCode : LargeString;
  ShipCountry : LargeString;
  CustomerID : LargeString;
  key CustomerName : LargeString not null;
  Address : LargeString;
  City : LargeString;
  Region : LargeString;
  PostalCode : LargeString;
  Country : LargeString;
  key Salesperson : LargeString not null;
  key OrderID : Integer not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  OrderDate : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  RequiredDate : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  ShippedDate : DateTime;
  key ShipperName : LargeString not null;
  key ProductID : Integer not null;
  key ProductName : LargeString not null;
  key UnitPrice : Decimal not null;
  key Quantity : Integer not null;
  @odata.Type : 'Edm.Single'
  key Discount : Double not null;
  ExtendedPrice : Decimal;
  Freight : Decimal;
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Order_Details_Extendeds {
  key OrderID : Integer not null;
  key ProductID : Integer not null;
  key ProductName : LargeString not null;
  key UnitPrice : Decimal not null;
  key Quantity : Integer not null;
  @odata.Type : 'Edm.Single'
  key Discount : Double not null;
  ExtendedPrice : Decimal;
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Order_Subtotals {
  key OrderID : Integer not null;
  Subtotal : Decimal;
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Orders_Qries {
  key OrderID : Integer not null;
  CustomerID : LargeString;
  EmployeeID : Integer;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  OrderDate : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  RequiredDate : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  ShippedDate : DateTime;
  ShipVia : Integer;
  Freight : Decimal;
  ShipName : LargeString;
  ShipAddress : LargeString;
  ShipCity : LargeString;
  ShipRegion : LargeString;
  ShipPostalCode : LargeString;
  ShipCountry : LargeString;
  key CompanyName : LargeString not null;
  Address : LargeString;
  City : LargeString;
  Region : LargeString;
  PostalCode : LargeString;
  Country : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Product_Sales_for_1997 {
  key CategoryName : LargeString not null;
  key ProductName : LargeString not null;
  ProductSales : Decimal;
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Products_Above_Average_Prices {
  key ProductName : LargeString not null;
  UnitPrice : Decimal;
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Products_by_Categories {
  key CategoryName : LargeString not null;
  key ProductName : LargeString not null;
  QuantityPerUnit : LargeString;
  UnitsInStock : Integer;
  key Discontinued : Boolean not null;
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Sales_by_Categories {
  key CategoryID : Integer not null;
  key CategoryName : LargeString not null;
  key ProductName : LargeString not null;
  ProductSales : Decimal;
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Sales_Totals_by_Amounts {
  SaleAmount : Decimal;
  key OrderID : Integer not null;
  key CompanyName : LargeString not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  ShippedDate : DateTime;
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Summary_of_Sales_by_Quarters {
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  ShippedDate : DateTime;
  key OrderID : Integer not null;
  Subtotal : Decimal;
};

@cds.external : true
@cds.persistence.skip : true
entity ODataWebV4.Northwind.Model.Summary_of_Sales_by_Years {
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  ShippedDate : DateTime;
  key OrderID : Integer not null;
  Subtotal : Decimal;
};

