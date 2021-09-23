---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/policies/defaultAppManagementPolicy"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphTenantAppManagementPolicy *tenantAppManagementPolicy = [[MSGraphTenantAppManagementPolicy alloc] init];
[tenantAppManagementPolicy setIsEnabled: true];
MSGraphAppManagementConfiguration *applicationRestrictions = [[MSGraphAppManagementConfiguration alloc] init];
NSMutableArray *passwordCredentialsList = [[NSMutableArray alloc] init];
MSGraphPasswordCredentialConfiguration *passwordCredentials = [[MSGraphPasswordCredentialConfiguration alloc] init];
[passwordCredentials setRestrictionType: [MSGraphAppCredentialRestrictionType passwordAddition]];
[passwordCredentials setMaxLifetime: null];
[passwordCredentials setRestrictForAppsCreatedAfterDateTime: "2021-04-01T10:37:00Z"];
[passwordCredentialsList addObject: passwordCredentials];
MSGraphPasswordCredentialConfiguration *passwordCredentials = [[MSGraphPasswordCredentialConfiguration alloc] init];
[passwordCredentials setRestrictionType: [MSGraphAppCredentialRestrictionType passwordLifetime]];
[passwordCredentials setMaxLifetime:@"P4DT12H30M5S"];
[passwordCredentials setRestrictForAppsCreatedAfterDateTime: "2019-01-01T10:37:00Z"];
[passwordCredentialsList addObject: passwordCredentials];
[applicationRestrictions setPasswordCredentials:passwordCredentialsList];
[tenantAppManagementPolicy setApplicationRestrictions:applicationRestrictions];

NSError *error;
NSData *tenantAppManagementPolicyData = [tenantAppManagementPolicy getSerializedDataWithError:&error];
[urlRequest setHTTPBody:tenantAppManagementPolicyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```