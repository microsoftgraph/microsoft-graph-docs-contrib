---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/applications/fd918e4b-c821-4efb-b50a-5eddd23afc6f/extensionProperties"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphExtensionProperty *extensionProperty = [[MSGraphExtensionProperty alloc] init];
[extensionProperty setName:@"jobGroup"];
[extensionProperty setDataType:@"String"];
NSMutableArray *targetObjectsList = [[NSMutableArray alloc] init];
[targetObjectsList addObject: @"User"];
[extensionProperty setTargetObjects:targetObjectsList];

NSError *error;
NSData *extensionPropertyData = [extensionProperty getSerializedDataWithError:&error];
[urlRequest setHTTPBody:extensionPropertyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```