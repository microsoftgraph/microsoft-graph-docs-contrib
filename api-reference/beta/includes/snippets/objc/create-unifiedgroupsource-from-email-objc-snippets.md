---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/compliance/ediscovery/cases/15d80234-8320-4f10-96d0-d98d53ffdfc9/custodians/8904528fef4d4578b44f71a80188f400/unifiedGroupSources"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphEdiscoveryUnifiedGroupSource *unifiedGroupSource = [[MSGraphEdiscoveryUnifiedGroupSource alloc] init];
MSGraphGroup *group = [[MSGraphGroup alloc] init];
[group setMail:@"SecretGroup@contoso.com"];
[unifiedGroupSource setGroup:group];
[unifiedGroupSource setIncludedSources: [MSGraphEdiscoverySourceType mailbox]];

NSError *error;
NSData *unifiedGroupSourceData = [unifiedGroupSource getSerializedDataWithError:&error];
[urlRequest setHTTPBody:unifiedGroupSourceData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```