---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/domains/contoso.com/federationConfiguration"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphInternalDomainFederation *internalDomainFederation = [[MSGraphInternalDomainFederation alloc] init];
[internalDomainFederation setDisplayName:@"Contoso"];
[internalDomainFederation setIssuerUri:@"http://contoso.com/adfs/services/trust"];
[internalDomainFederation setMetadataExchangeUri:@"https://sts.contoso.com/adfs/services/trust/mex"];
[internalDomainFederation setSigningCertificate:@"MIIE3jCCAsagAwIBAgIQQcyDaZz3MI"];
[internalDomainFederation setPassiveSignInUri:@"https://sts.contoso.com/adfs/ls"];
[internalDomainFederation setPreferredAuthenticationProtocol: [MSGraphAuthenticationProtocol wsFed]];
[internalDomainFederation setActiveSignInUri:@"https://sts.contoso.com/adfs/services/trust/2005/usernamemixed"];
[internalDomainFederation setSignOutUri:@"https://sts.contoso.com/adfs/ls"];
[internalDomainFederation setPromptLoginBehavior: [MSGraphPromptLoginBehavior nativeSupport]];
[internalDomainFederation setIsSignedAuthenticationRequestRequired: true];
[internalDomainFederation setNextSigningCertificate:@"MIIE3jCCAsagAwIBAgIQQcyDaZz3MI"];
[internalDomainFederation setFederatedIdpMfaBehavior: [MSGraphFederatedIdpMfaBehavior rejectMfaByFederatedIdp]];

NSError *error;
NSData *internalDomainFederationData = [internalDomainFederation getSerializedDataWithError:&error];
[urlRequest setHTTPBody:internalDomainFederationData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```