---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/groups/1132b215-826f-42a9-8cfe-1643d19d17fd/assignLicense"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

NSMutableDictionary *payloadDictionary = [[NSMutableDictionary alloc] init];

NSMutableArray *addLicensesList = [[NSMutableArray alloc] init];
MSGraphAssignedLicense *addLicenses = [[MSGraphAssignedLicense alloc] init];
NSMutableArray *disabledPlansList = [[NSMutableArray alloc] init];
[disabledPlansList addObject: @"113feb6c-3fe4-4440-bddc-54d774bf0318"];
[disabledPlansList addObject: @"14ab5db5-e6c4-4b20-b4bc-13e36fd2227f"];
[addLicenses setDisabledPlans:disabledPlansList];
[addLicenses setSkuId:@"b05e124f-c7cc-45a0-a6aa-8cf78c946968"];
[addLicensesList addObject: addLicenses];
MSGraphAssignedLicense *addLicenses = [[MSGraphAssignedLicense alloc] init];
NSMutableArray *disabledPlansList = [[NSMutableArray alloc] init];
[disabledPlansList addObject: @"a413a9ff-720c-4822-98ef-2f37c2a21f4c"];
[addLicenses setDisabledPlans:disabledPlansList];
[addLicenses setSkuId:@"c7df2760-2c81-4ef7-b578-5b5392b571df"];
[addLicensesList addObject: addLicenses];
payloadDictionary[@"addLicenses"] = addLicensesList;

NSMutableArray *removeLicensesList = [[NSMutableArray alloc] init];
payloadDictionary[@"removeLicenses"] = removeLicensesList;

NSData *data = [NSJSONSerialization dataWithJSONObject:payloadDictionary options:kNilOptions error:&error];
[urlRequest setHTTPBody:data];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```