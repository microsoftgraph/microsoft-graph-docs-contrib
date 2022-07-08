---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identityGovernance/termsOfUse/agreements/0ec9f6a6-159d-4dd8-a563-1f0b5935e80b"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAgreement *agreement = [[MSGraphAgreement alloc] init];
[agreement setDisplayName:@"All Contoso volunteers - Terms of use"];
[agreement setIsViewingBeforeAcceptanceRequired: true];

NSError *error;
NSData *agreementData = [agreement getSerializedDataWithError:&error];
[urlRequest setHTTPBody:agreementData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```