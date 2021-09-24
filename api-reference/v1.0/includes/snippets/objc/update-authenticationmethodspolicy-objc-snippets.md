---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/policies/authenticationMethodsPolicy"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAuthenticationMethodsPolicy *authenticationMethodsPolicy = [[MSGraphAuthenticationMethodsPolicy alloc] init];
NSMutableArray *authenticationMethodConfigurationsList = [[NSMutableArray alloc] init];
MSGraphAuthenticationMethodConfiguration *authenticationMethodConfigurations = [[MSGraphAuthenticationMethodConfiguration alloc] init];
[authenticationMethodConfigurations setId:@"Fido2"];
[authenticationMethodConfigurations setState: [MSGraphAuthenticationMethodState disabled]];
[authenticationMethodConfigurations setIsSelfServiceRegistrationAllowed: false];
[authenticationMethodConfigurations setIsAttestationEnforced: false];
MSGraphFido2KeyRestrictions *keyRestrictions = [[MSGraphFido2KeyRestrictions alloc] init];
[keyRestrictions setIsEnforced: false];
[keyRestrictions setEnforcementType: [MSGraphFido2RestrictionEnforcementType block]];
NSMutableArray *aaGuidsList = [[NSMutableArray alloc] init];
[keyRestrictions setAaGuids:aaGuidsList];
[authenticationMethodConfigurations setKeyRestrictions:keyRestrictions];
[authenticationMethodConfigurationsList addObject: authenticationMethodConfigurations];
[authenticationMethodsPolicy setAuthenticationMethodConfigurations:authenticationMethodConfigurationsList];

NSError *error;
NSData *authenticationMethodsPolicyData = [authenticationMethodsPolicy getSerializedDataWithError:&error];
[urlRequest setHTTPBody:authenticationMethodsPolicyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```