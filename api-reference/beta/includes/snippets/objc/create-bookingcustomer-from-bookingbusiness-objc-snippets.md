---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/bookingBusinesses/Contosolunchdelivery@M365B489948.onmicrosoft.com/customers"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphBookingCustomer *bookingCustomer = [[MSGraphBookingCustomer alloc] init];
[bookingCustomer setDisplayName:@"Joni Sherman"];
[bookingCustomer setEmailAddress:@"jonis@relecloud.com"];
NSMutableArray *addressesList = [[NSMutableArray alloc] init];
MSGraphPhysicalAddress *addresses = [[MSGraphPhysicalAddress alloc] init];
[addresses setPostOfficeBox:@""];
[addresses setStreet:@"4567 Main Street"];
[addresses setCity:@"Buffalo"];
[addresses setState:@"NY"];
[addresses setCountryOrRegion:@"USA"];
[addresses setPostalCode:@"98052"];
[addresses setType: [MSGraphPhysicalAddressType home]];
[addressesList addObject: addresses];
MSGraphPhysicalAddress *addresses = [[MSGraphPhysicalAddress alloc] init];
[addresses setPostOfficeBox:@""];
[addresses setStreet:@"4570 Main Street"];
[addresses setCity:@"Buffalo"];
[addresses setState:@"NY"];
[addresses setCountryOrRegion:@"USA"];
[addresses setPostalCode:@"98054"];
[addresses setType: [MSGraphPhysicalAddressType business]];
[addressesList addObject: addresses];
[bookingCustomer setAddresses:addressesList];
NSMutableArray *phonesList = [[NSMutableArray alloc] init];
MSGraphPhone *phones = [[MSGraphPhone alloc] init];
[phones setNumber:@"206-555-0100"];
[phones setType: [MSGraphPhoneType home]];
[phonesList addObject: phones];
MSGraphPhone *phones = [[MSGraphPhone alloc] init];
[phones setNumber:@"206-555-0200"];
[phones setType: [MSGraphPhoneType business]];
[phonesList addObject: phones];
[bookingCustomer setPhones:phonesList];

NSError *error;
NSData *bookingCustomerData = [bookingCustomer getSerializedDataWithError:&error];
[urlRequest setHTTPBody:bookingCustomerData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```