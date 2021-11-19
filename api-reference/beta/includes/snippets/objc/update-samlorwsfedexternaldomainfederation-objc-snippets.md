---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/directory/federationConfigurations/graph.samlOrWsFedExternalDomainFederation/d5a56845-6845-d5a5-4568-a5d54568a5d5"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphSamlOrWsFedExternalDomainFederation *samlOrWsFedExternalDomainFederation = [[MSGraphSamlOrWsFedExternalDomainFederation alloc] init];
[samlOrWsFedExternalDomainFederation setDisplayName:@"Contoso name change"];
[samlOrWsFedExternalDomainFederation setIssuerUri:@"http://contoso-test.com/adfs/services/trust"];
[samlOrWsFedExternalDomainFederation setMetadataExchangeUri: null];
[samlOrWsFedExternalDomainFederation setSigningCertificate:@"M66C6DCCAdCgAwIBAgIQQ6vYJIVKQ"];
[samlOrWsFedExternalDomainFederation setPassiveSignInUri:@"https://contoso-test.com/adfs/ls/"];
[samlOrWsFedExternalDomainFederation setPreferredAuthenticationProtocol: [MSGraphAuthenticationProtocol wsFed]];

NSError *error;
NSData *samlOrWsFedExternalDomainFederationData = [samlOrWsFedExternalDomainFederation getSerializedDataWithError:&error];
[urlRequest setHTTPBody:samlOrWsFedExternalDomainFederationData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```