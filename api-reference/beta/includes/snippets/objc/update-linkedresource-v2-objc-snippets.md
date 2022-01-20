---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/tasks/lists/AAMkADliMmU5YjJlLTVmMmQtNGQzNS1iYjA0LTdmZTA2NTI0MTE5YwAuAAAAAADdOMUbUmCfTKa7OC-fqjkdAQBnu3olF7NfToRyJ2f__TNcAAAAAAESAAA=/tasks/AAkALgAAAAAAHYQDEapmEc2byACqAC-EWg0AZ7t6JRezX06Ecidn-vkzXAABPDii4gAA/linkedResources/e2c5ed75-7aa4-4f8e-84ab-98b5e0b56ee8"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphLinkedResource_v2 *linkedResource_v2 = [[MSGraphLinkedResource_v2 alloc] init];
[linkedResource_v2 setWebUrl:@"https://microsoft.com"];
[linkedResource_v2 setApplicationName:@"Microsoft"];
[linkedResource_v2 setDisplayName:@"Microsoft Web page"];
[linkedResource_v2 setExternalId:@"dk9cddce2-dce2-f9dd-e2dc-cdf9e2dccdf9"];

NSError *error;
NSData *linkedResource_v2Data = [linkedResource_v2 getSerializedDataWithError:&error];
[urlRequest setHTTPBody:linkedResource_v2Data];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```