---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/policies/appManagementPolicies"]]];
[urlRequest setHTTPMethod:@"POST"];

MSGraphAppManagementPolicy *appManagementPolicy = [[MSGraphAppManagementPolicy alloc] init];
[appManagementPolicy setDisplayName:@"Credential management policy"];
[appManagementPolicy setDescription:@"Cred policy sample"];
[appManagementPolicy setIsEnabled: true];
MSGraphAppManagementConfiguration *restrictions = [[MSGraphAppManagementConfiguration alloc] init];
NSMutableArray *passwordCredentialsList = [[NSMutableArray alloc] init];
MSGraphPasswordCredentialConfiguration *passwordCredentials = [[MSGraphPasswordCredentialConfiguration alloc] init];
[passwordCredentials setRestrictionType: [MSGraphAppCredentialRestrictionType passwordAddition]];
[passwordCredentials setMaxLifetime: null];
[passwordCredentials setRestrictForAppsCreatedAfterDateTime: "2019-10-19T10:37:00Z"];
[passwordCredentialsList addObject: passwordCredentials];
MSGraphPasswordCredentialConfiguration *passwordCredentials = [[MSGraphPasswordCredentialConfiguration alloc] init];
[passwordCredentials setRestrictionType: [MSGraphAppCredentialRestrictionType passwordLifetime]];
[passwordCredentials setMaxLifetime:@"P4DT12H30M5S"];
[passwordCredentials setRestrictForAppsCreatedAfterDateTime: "2014-10-19T10:37:00Z"];
[passwordCredentialsList addObject: passwordCredentials];
MSGraphPasswordCredentialConfiguration *passwordCredentials = [[MSGraphPasswordCredentialConfiguration alloc] init];
[passwordCredentials setRestrictionType: [MSGraphAppCredentialRestrictionType symmetricKeyAddition]];
[passwordCredentials setMaxLifetime: null];
[passwordCredentials setRestrictForAppsCreatedAfterDateTime: "2019-10-19T10:37:00Z"];
[passwordCredentialsList addObject: passwordCredentials];
MSGraphPasswordCredentialConfiguration *passwordCredentials = [[MSGraphPasswordCredentialConfiguration alloc] init];
[passwordCredentials setRestrictionType: [MSGraphAppCredentialRestrictionType symmetricKeyLifetime]];
[passwordCredentials setMaxLifetime:@"P4D"];
[passwordCredentials setRestrictForAppsCreatedAfterDateTime: "2014-10-19T10:37:00Z"];
[passwordCredentialsList addObject: passwordCredentials];
[restrictions setPasswordCredentials:passwordCredentialsList];
NSMutableArray *keyCredentialsList = [[NSMutableArray alloc] init];
MSGraphKeyCredentialConfiguration *keyCredentials = [[MSGraphKeyCredentialConfiguration alloc] init];
[keyCredentials setRestrictionType: [MSGraphAppKeyCredentialRestrictionType asymmetricKeyLifetime]];
[keyCredentials setMaxLifetime:@"P90D"];
[keyCredentials setRestrictForAppsCreatedAfterDateTime: "2014-10-19T10:37:00Z"];
[keyCredentialsList addObject: keyCredentials];
[restrictions setKeyCredentials:keyCredentialsList];
[appManagementPolicy setRestrictions:restrictions];

NSError *error;
NSData *appManagementPolicyData = [appManagementPolicy getSerializedDataWithError:&error];
[urlRequest setHTTPBody:appManagementPolicyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```