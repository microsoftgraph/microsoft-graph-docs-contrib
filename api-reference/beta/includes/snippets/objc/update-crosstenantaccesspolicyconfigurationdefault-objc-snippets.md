---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/policies/crossTenantAccessPolicy/default"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphCrossTenantAccessPolicyConfigurationDefault *crossTenantAccessPolicyConfigurationDefault = [[MSGraphCrossTenantAccessPolicyConfigurationDefault alloc] init];
MSGraphCrossTenantAccessPolicyB2BSetting *b2bCollaborationOutbound = [[MSGraphCrossTenantAccessPolicyB2BSetting alloc] init];
MSGraphCrossTenantAccessPolicyTargetConfiguration *usersAndGroups = [[MSGraphCrossTenantAccessPolicyTargetConfiguration alloc] init];
[usersAndGroups setAccessType: [MSGraphCrossTenantAccessPolicyTargetConfigurationAccessType blocked]];
NSMutableArray *targetsList = [[NSMutableArray alloc] init];
MSGraphCrossTenantAccessPolicyTarget *targets = [[MSGraphCrossTenantAccessPolicyTarget alloc] init];
[targets setTarget:@"0be493dc-cb56-4a53-936f-9cf64410b8b0"];
[targets setTargetType: [MSGraphCrossTenantAccessPolicyTargetType group]];
[targetsList addObject: targets];
[usersAndGroups setTargets:targetsList];
[b2bCollaborationOutbound setUsersAndGroups:usersAndGroups];
MSGraphCrossTenantAccessPolicyTargetConfiguration *applications = [[MSGraphCrossTenantAccessPolicyTargetConfiguration alloc] init];
[applications setAccessType: [MSGraphCrossTenantAccessPolicyTargetConfigurationAccessType blocked]];
NSMutableArray *targetsList = [[NSMutableArray alloc] init];
MSGraphCrossTenantAccessPolicyTarget *targets = [[MSGraphCrossTenantAccessPolicyTarget alloc] init];
[targets setTarget:@"AllApplications"];
[targets setTargetType: [MSGraphCrossTenantAccessPolicyTargetType application]];
[targetsList addObject: targets];
[applications setTargets:targetsList];
[b2bCollaborationOutbound setApplications:applications];
[crossTenantAccessPolicyConfigurationDefault setB2bCollaborationOutbound:b2bCollaborationOutbound];

NSError *error;
NSData *crossTenantAccessPolicyConfigurationDefaultData = [crossTenantAccessPolicyConfigurationDefault getSerializedDataWithError:&error];
[urlRequest setHTTPBody:crossTenantAccessPolicyConfigurationDefaultData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```