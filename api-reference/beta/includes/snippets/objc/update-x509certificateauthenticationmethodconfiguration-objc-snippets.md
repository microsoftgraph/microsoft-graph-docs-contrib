---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/x509Certificate"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAuthenticationMethodConfiguration *authenticationMethodConfiguration = [[MSGraphAuthenticationMethodConfiguration alloc] init];
[authenticationMethodConfiguration setId:@"X509Certificate"];
[authenticationMethodConfiguration setState: [MSGraphAuthenticationMethodState disabled]];
NSMutableArray *certificateUserBindingsList = [[NSMutableArray alloc] init];
MSGraphX509CertificateUserBinding *certificateUserBindings = [[MSGraphX509CertificateUserBinding alloc] init];
[certificateUserBindings setX509CertificateField:@"PrincipalName"];
[certificateUserBindings setUserProperty:@"onPremisesUserPrincipalName"];
[certificateUserBindings setPriority: 1];
[certificateUserBindingsList addObject: certificateUserBindings];
MSGraphX509CertificateUserBinding *certificateUserBindings = [[MSGraphX509CertificateUserBinding alloc] init];
[certificateUserBindings setX509CertificateField:@"RFC822Name"];
[certificateUserBindings setUserProperty:@"userPrincipalName"];
[certificateUserBindings setPriority: 2];
[certificateUserBindingsList addObject: certificateUserBindings];
[authenticationMethodConfiguration setCertificateUserBindings:certificateUserBindingsList];
MSGraphX509CertificateAuthenticationModeConfiguration *authenticationModeConfiguration = [[MSGraphX509CertificateAuthenticationModeConfiguration alloc] init];
[authenticationModeConfiguration setX509CertificateAuthenticationDefaultMode: [MSGraphX509CertificateAuthenticationMode x509CertificateSingleFactor]];
NSMutableArray *rulesList = [[NSMutableArray alloc] init];
[authenticationModeConfiguration setRules:rulesList];
[authenticationMethodConfiguration setAuthenticationModeConfiguration:authenticationModeConfiguration];
NSMutableArray *includeTargetsList = [[NSMutableArray alloc] init];
MSGraphAuthenticationMethodTarget *includeTargets = [[MSGraphAuthenticationMethodTarget alloc] init];
[includeTargets setTargetType: [MSGraphAuthenticationMethodTargetType group]];
[includeTargets setId:@"all_users"];
[includeTargets setIsRegistrationRequired: false];
[includeTargetsList addObject: includeTargets];
[authenticationMethodConfiguration setIncludeTargets:includeTargetsList];

NSError *error;
NSData *authenticationMethodConfigurationData = [authenticationMethodConfiguration getSerializedDataWithError:&error];
[urlRequest setHTTPBody:authenticationMethodConfigurationData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```