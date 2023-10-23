CRUD - Create Read Update Delete ---------------------------------------------------------------------------------------------------
 CRUD_1 Invoice For Vendor --------------------------------------------------------------------------------------------------- 
 id PurchaseInvoiceId productId OwncompanyId OwncompanyAddressID Mdate venderCompanyId venderUserId venderAddressID paymentModeId Qty Discount CP MAction ################################################################################################ 
CREATE TABLE SAH_M_Purchase ( ID int NOT NULL PRIMARY KEY, PurchaseInvoiceId int, productId int, OwncompanyId int, OwncompanyAddressID int, Mdate int, venderCompanyId int, venderUserId int, venderAddressID int, paymentModeId int, Qty int, Discount int, CP int, MAction varchar(255) ); %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
SELECT id , PurchaseInvoiceId , productId , OwncompanyId , OwncompanyAddressID , Mdate , venderCompanyId , venderUserId , venderAddressID , paymentModeId , Qty , Discount , CP , MAction FROM SAH_M_Purchase;
 &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& 
 UPDATE SAH_M_Purchase SET PurchaseInvoiceId ='' , productId ='' , OwncompanyId ='' , OwncompanyAddressID ='' , Mdate ='' , venderCompanyId ='' , venderUserId ='' , venderAddressID ='', paymentModeId ='' , Qty ='', Discount ='' , CP ='', MAction ='' WHERE id = ''; --------------------------------------------------------------------------------------------------- 
 CRUD_2 Sales Invoice For Customer 
 --------------------------------------------------------------------------------------------------- 
 id SaleInvoiceId productId OwncompanyId OwncompanyAddressID Mdate customerCompanyId custmerUserId customerBillingAddressID customerCourierAddressID customerShippingAddressID paymentModeId Qty Discount CP PurchaseStatus, MAction 
 ################################################################################################ 
 CREATE TABLE SAH_M_Sales ( ID int NOT NULL PRIMARY KEY, InvoiceId int, productId int, OwncompanyId int, OwncompanyAddressID int, Mdate int, customerCompanyId int, custmerUserId int, customerBillingAddressID int, customerCourierAddressID int, customerShippingAddressID int, paymentModeId int, Qty int, Discount int, CP int, PurchaseStatus varchar(255), MAction varchar(255), );
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  SELECT id , SaleInvoiceId , productId , OwncompanyId , OwncompanyAddressID , Mdate , customerCompanyId , custmerUserId , customerBillingAddressID , customerCourierAddressID, customerShippingAddressID , paymentModeId , Qty , Discount , CP , PurchaseStatus , MAction FROM SAH_M_Sales;
   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
    UPDATE SAH_M_Sales SET id ='' , SaleInvoiceId ='' , productId ='' , OwncompanyId ='' , OwncompanyAddressID ='' , Mdate ='' , customerCompanyId ='' , custmerUserId ='' , customerBillingAddressID ='' , customerCourierAddressID ='' , customerShippingAddressID ='' , paymentModeId ='' , Qty ='' , Discount ='' , CP ='' , MAction ='' PurchaseStatus ='', WHERE id = '';
     ---------------------------------------------------------------------------------------------------
      CRUD_3 Product
       --------------------------------------------------------------------------------------------------- 
       id productId product_name ctID PrID Bid MAction 
       ################################################################################################ 
       CREATE TABLE SAH_M_Product ( ID int NOT NULL PRIMARY KEY, productId int, product_name varchar(255), ctID int, PrID int, Bid int, MAction varchar(255), ); %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
       SELECT id , productId , product_name, ctID, PrID, Bid, MAction FROM SAH_M_Product; 
       &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
        UPDATE SAH_M_Product SET id ='' , productId ='' , product_name ='' , ctID ='' , PrID ='' , Bid ='' , MAction ='' WHERE id = ''; --------------------------------------------------------------------------------------------------- 
        CRUD_4 Brand 
        --------------------------------------------------------------------------------------------------- 
        id Bid brandName MAction 
        ################################################################################################
         CREATE TABLE SAH_M_Brand ( ID int NOT NULL PRIMARY KEY, Bid int, brandName varchar(255), MAction varchar(255), ); %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
         SELECT id , Bid, brandName, MAction FROM SAH_M_Brand; 
         &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& 
         UPDATE SAH_M_Brand SET brandName='', Bid ='' , MAction ='' WHERE id = ''; ---------------------------------------------------------------------------------------------------
          CRUD_5 Catagories 
          --------------------------------------------------------------------------------------------------- 
          id Cid CatagoriesName MAction 
          ################################################################################################
           CREATE TABLE SAH_M_Brand ( ID int NOT NULL PRIMARY KEY, Cid int, CatagoriesName varchar(255), MAction varchar(255), ); %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
           SELECT id , Cid, CatagoriesName, MAction FROM SAH_M_Brand;
            &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& 
            UPDATE SAH_M_Brand SET Cid='', CatagoriesName ='' , MAction ='' WHERE id = ''; --------------------------------------------------------------------------------------------------- 
            CRUD_6 Price 
            --------------------------------------------------------------------------------------------------- 
            id PrID MRP SP Mdate CP MAction 
            ################################################################################################ 
            CREATE TABLE SAH_M_Price ( ID int NOT NULL PRIMARY KEY, PrID int, MRP int, SP int, CP int, Mdate varchar(255), MAction varchar(255), ); %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
            SELECT id , Cid, PrID, MRP, SP, CP, Mdate, MAction FROM SAH_M_Price; 
            &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& 
            UPDATE SAH_M_Price SET Cid='', PrID ='' , MRP ='', CP='', SP ='' , MAction ='' WHERE id = ''; ---------------------------------------------------------------------------------------------------
             CRUD_7 company
              ---------------------------------------------------------------------------------------------------
               id CoID GSTNo GSTCode AddressId PAN TIN Website CoEmail UserID MAction ################################################################################################
                CREATE TABLE SAH_M_Price ( ID int NOT NULL PRIMARY KEY, CoID int , GSTNo int, GSTCode int, AddressId int, PAN varchar(255), TIN varchar(255), Website varchar(255), CoEmail varchar(255), UserID int, MAction varchar(255), ); 
                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
                SELECT id , CoID, GSTNo, GSTCode, AddressId, PAN, TIN, Website, CoEmail, UserID, MAction FROM SAH_M_Price; 
                &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                UPDATE SAH_M_Price SET CoID ='', GSTNo='', GSTCode='', AddressId='', PAN='', TIN='', Website='', CoEmail='', UserID='', WHERE id = ''; ---------------------------------------------------------------------------------------------------
                 CRUD_8 SAH_Address
                  --------------------------------------------------------------------------------------------------- 
                  id AddressId City AddressState Address1 Address2 MAction
                  ################################################################################################ 
                  CREATE TABLE SAH_M_Price ( ID int NOT NULL PRIMARY KEY, AddressId int, City varchar(255), AddressState varchar(255), Address1 varchar(255), Address2 varchar(255), MAction varchar(255) ); 
                  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
                  SELECT id , AddressId, City, AddressState, Address1, Address2, MAction FROM SAH_M_Price; 
                  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                   UPDATE SAH_M_Price SET AddressId='', City='', AddressState='', Address1='', Address2='', MAction='' WHERE id = ''; ---------------------------------------------------------------------------------------------------
                    CRUD_9 User 
                    --------------------------------------------------------------------------------------------------- 
                    id userId userName userDOB bloodGroup email userPassword userRole MAction ################################################################################################ 
                    CREATE TABLE SAH_M_Price ( ID int NOT NULL PRIMARY KEY, userId int, userName varchar(255), userDOB varchar(255), bloodGroup varchar(255), email varchar(255), userPassword varchar(255), userRole varchar(255), MAction varchar(255) );
                     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
                     SELECT id , userId, userName, userDOB, bloodGroup, email, userPassword, userRole, MAction FROM SAH_M_Price; 
                     &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                      UPDATE SAH_M_Price SET userId='', userName='', userDOB='', bloodGroup='', email='', userPassword='', userRole='' WHERE id = ''; --------------------------------------------------------------------------------------------------- 
                      CRUD_10 Bank 
                      --------------------------------------------------------------------------------------------------- 
                      id bankId bankName AccountNumber ISFC AccNo Branch BranchAddress MAction ################################################################################################ 
                      CREATE TABLE SAH_M_Price ( ID int NOT NULL PRIMARY KEY, bankId int, bankName varchar(255), AccountNumber varchar(255), ISFC varchar(255), AccNo varchar(255), Branch varchar(255), BranchAddress varchar(255), MAction varchar(255) ); 
                      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
                      SELECT id , bankId, bankName, AccountNumber, ISFC, AccNo, Branch, BranchAddress, MAction FROM SAH_M_Price; 
                      &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& 
                      UPDATE SAH_M_Price SET bankId ='', bankName='', AccountNumber='', ISFC='', AccNo='', Branch='', BranchAddress='', MAction='' WHERE id = ''; --------------------------------------------------------------------------------------------------- 
                      CRUD_11 Payment
                      --------------------------------------------------------------------------------------------------- 
                      id PaymentID InvoiceID Credit_Debit Amount TransationID Img paymentModeId MAction ################################################################################################ 
                      CREATE TABLE SAH_M_Price ( ID int NOT NULL PRIMARY KEY, PaymentID int, InvoiceID varchar(255), Credit_Debit varchar(255), Amount varchar(255), TransationID varchar(255), Img varchar(255), paymentModeId varchar(255), MAction varchar(255) ); %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% SELECT id , PaymentID, InvoiceID, Credit_Debit, Amount, TransationID, Img, paymentModeId, MAction FROM SAH_M_Price; &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& UPDATE SAH_M_Price SET PaymentID='', InvoiceID='', Credit_Debit='', Amount='', TransationID='', Img='', paymentModeId='', WHERE id = ''; --------------------------------------------------------------------------------------------------- CRUD_12 Payment_Mode --------------------------------------------------------------------------------------------------- id PaymentModeID PaymentModeName MAction ################################################################################################ CREATE TABLE SAH_M_Price ( ID int NOT NULL PRIMARY KEY, paymentModeId int, PaymentModeName varchar(255), MAction varchar(255) ); %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% SELECT id , PaymentModeID, PaymentModeName, MAction FROM SAH_M_Price; &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& UPDATE SAH_M_Price SET PaymentModeName='', paymentModeId='', WHERE id = ''; --------------------------------------------------------------------------------------------------- CRUD_13 Product_Qty --------------------------------------------------------------------------------------------------- id PID qty lastUpdated MAction ################################################################################################ CREATE TABLE SAH_M_Price ( ID int NOT NULL PRIMARY KEY, PID int, qty varchar(255), lastUpdated varchar(255), MAction varchar(255) ); %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% SELECT id , PID, qty, lastUpdated, MAction FROM SAH_M_Price; &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& UPDATE SAH_M_Price SET PID='', qty='', lastUpdated='', WHERE id = '';