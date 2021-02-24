# Java Development Challenge
The source code based on requirement NAB-VDC Java Take-home Assigmment V2 with articles on Microservices Spring Boot. 

### Development environment setup
* Create a new schema name 'NAB' (SQL Server) and then execute following scripts:
*   202102011600__purchase_prepaid_data__init_Buy_Data_Card.sql
*   202102211700__purchase__prepaid__data_Insert.sql

#### Correct connection string in the application property file
purchase-prepaid-data\src\main\resources\application.properties
* datasource corresponding with SQL Server DB
* 3rd-parties-api corresponding with your configuration  

### Order deployment services under tomcat server
- [DevelopmentChallengeServerApp] - It’s the naming server or service registry. 
	 In case we want to call others services that just use the service name 
	 instead of IP addresses / ports of micro services.
	 
- [VoucherCodeGeneratorApp] -  A mock service of 3rd party to return the voucher code.
     This is a simple micro service acts as a voucher code generator; each voucher has 
	 an id and code. To make it simple I have created several voucher codes by hard 
	 code in the service.
	 
- [development-challenge-gateway] - A gateway is a single entry point into the system, 
	 it means all calls to the system must go through this service or handle requests 
	 by routing them to the corresponding service.
	 
- [PurchasePrepaidDataApp] -   API service to integrate with 3rd parties, handle 
	request from front end, stored data to DB and return voucher code. 

### Execution a simple testing:
* Open browser and enter http://localhost:8082/api/voucherCode?dataPlanId=5&mobilePhoneNumber=84908226345
