---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/applications/{id}/appManagementPolicies/$ref"]]];
[urlRequest setHTTPMethod:@"POST"];

MSGraphAppManagementPolicy *appManagementPolicy = [[MSGraphAppManagementPolicy alloc] init];

NSError *error;
NSData *appManagementPolicyData = [appManagementPolicy getSerializedDataWithError:&error];
[urlRequest setHTTPBody:appManagementPolicyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```