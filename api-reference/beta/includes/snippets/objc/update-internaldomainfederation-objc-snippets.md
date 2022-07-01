---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/domains/contoso.com/federationConfiguration/6601d14b-d113-8f64-fda2-9b5ddda18ecc"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphInternalDomainFederation *internalDomainFederation = [[MSGraphInternalDomainFederation alloc] init];
[internalDomainFederation setDisplayName:@"Contoso name change"];
[internalDomainFederation setFederatedIdpMfaBehavior: [MSGraphFederatedIdpMfaBehavior acceptIfMfaDoneByFederatedIdp]];

NSError *error;
NSData *internalDomainFederationData = [internalDomainFederation getSerializedDataWithError:&error];
[urlRequest setHTTPBody:internalDomainFederationData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```