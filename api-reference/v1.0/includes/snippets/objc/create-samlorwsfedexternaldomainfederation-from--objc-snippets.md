---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/directory/federationConfigurations"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphIdentityProviderBase *identityProviderBase = [[MSGraphIdentityProviderBase alloc] init];
[identityProviderBase setIssuerUri:@"https://contoso.com/issuerUri"];
[identityProviderBase setDisplayName:@"contoso display name"];
[identityProviderBase setMetadataExchangeUri:@"https://contoso.com/metadataExchangeUri"];
[identityProviderBase setPassiveSignInUri:@"https://contoso.com/signin"];
[identityProviderBase setPreferredAuthenticationProtocol: [MSGraphAuthenticationProtocol wsFed]];
NSMutableArray *domainsList = [[NSMutableArray alloc] init];
MSGraphExternalDomainName *domains = [[MSGraphExternalDomainName alloc] init];
[domains setId:@"contoso.com"];
[domainsList addObject: domains];
[identityProviderBase setDomains:domainsList];
[identityProviderBase setSigningCertificate:@"MIIDADCCAeigAwIBAgIQEX41y8r6"];

NSError *error;
NSData *identityProviderBaseData = [identityProviderBase getSerializedDataWithError:&error];
[urlRequest setHTTPBody:identityProviderBaseData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```