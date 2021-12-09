---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/organization/84841066-274d-4ec0-a5c1-276be684bdd3/branding"]]];
[urlRequest setHTTPMethod:@"DELETE"];

MSGraphOrganizationalBranding *organizationalBranding = [[MSGraphOrganizationalBranding alloc] init];
[organizationalBranding setId:@"0"];

NSError *error;
NSData *organizationalBrandingData = [organizationalBranding getSerializedDataWithError:&error];
[urlRequest setHTTPBody:organizationalBrandingData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```