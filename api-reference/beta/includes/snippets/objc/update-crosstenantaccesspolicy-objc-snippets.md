---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/policies/crossTenantAccessPolicy"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphCrossTenantAccessPolicy *crossTenantAccessPolicy = [[MSGraphCrossTenantAccessPolicy alloc] init];
[crossTenantAccessPolicy setDisplayName:@"CrossTenantAccessPolicy"];

NSError *error;
NSData *crossTenantAccessPolicyData = [crossTenantAccessPolicy getSerializedDataWithError:&error];
[urlRequest setHTTPBody:crossTenantAccessPolicyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```