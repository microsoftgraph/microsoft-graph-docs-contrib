---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/applications/bcd7c908-1c4d-4d48-93ee-ff38349a75c8/federatedIdentityCredentials/"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphFederatedIdentityCredential *federatedIdentityCredential = [[MSGraphFederatedIdentityCredential alloc] init];
[federatedIdentityCredential setName:@"testing02"];
[federatedIdentityCredential setIssuer:@"https://login.microsoftonline.com/3d1e2be9-a10a-4a0c-8380-7ce190f98ed9/v2.0"];
[federatedIdentityCredential setSubject:@"a7d388c3-5e3f-4959-ac7d-786b3383006a"];
NSMutableArray *audiencesList = [[NSMutableArray alloc] init];
[audiencesList addObject: @"api://AzureADTokenExchange"];
[federatedIdentityCredential setAudiences:audiencesList];

NSError *error;
NSData *federatedIdentityCredentialData = [federatedIdentityCredential getSerializedDataWithError:&error];
[urlRequest setHTTPBody:federatedIdentityCredentialData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```