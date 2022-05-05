---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/policies/crossTenantAccessPolicy/partners"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphCrossTenantAccessPolicyConfigurationPartner *crossTenantAccessPolicyConfigurationPartner = [[MSGraphCrossTenantAccessPolicyConfigurationPartner alloc] init];
[crossTenantAccessPolicyConfigurationPartner setTenantId:@"3d0f5dec-5d3d-455c-8016-e2af1ae4d31a"];
MSGraphCrossTenantAccessPolicyB2BSetting *b2bDirectConnectOutbound = [[MSGraphCrossTenantAccessPolicyB2BSetting alloc] init];
MSGraphCrossTenantAccessPolicyTargetConfiguration *usersAndGroups = [[MSGraphCrossTenantAccessPolicyTargetConfiguration alloc] init];
[usersAndGroups setAccessType: [MSGraphCrossTenantAccessPolicyTargetConfigurationAccessType blocked]];
NSMutableArray *targetsList = [[NSMutableArray alloc] init];
MSGraphCrossTenantAccessPolicyTarget *targets = [[MSGraphCrossTenantAccessPolicyTarget alloc] init];
[targets setTarget:@"6f546279-4da5-4b53-a095-09ea0cef9971"];
[targets setTargetType: [MSGraphCrossTenantAccessPolicyTargetType group]];
[targetsList addObject: targets];
[usersAndGroups setTargets:targetsList];
[b2bDirectConnectOutbound setUsersAndGroups:usersAndGroups];
[crossTenantAccessPolicyConfigurationPartner setB2bDirectConnectOutbound:b2bDirectConnectOutbound];
MSGraphCrossTenantAccessPolicyB2BSetting *b2bDirectConnectInbound = [[MSGraphCrossTenantAccessPolicyB2BSetting alloc] init];
MSGraphCrossTenantAccessPolicyTargetConfiguration *applications = [[MSGraphCrossTenantAccessPolicyTargetConfiguration alloc] init];
[applications setAccessType: [MSGraphCrossTenantAccessPolicyTargetConfigurationAccessType allowed]];
NSMutableArray *targetsList = [[NSMutableArray alloc] init];
MSGraphCrossTenantAccessPolicyTarget *targets = [[MSGraphCrossTenantAccessPolicyTarget alloc] init];
[targets setTarget:@"Office365"];
[targets setTargetType: [MSGraphCrossTenantAccessPolicyTargetType application]];
[targetsList addObject: targets];
[applications setTargets:targetsList];
[b2bDirectConnectInbound setApplications:applications];
[crossTenantAccessPolicyConfigurationPartner setB2bDirectConnectInbound:b2bDirectConnectInbound];

NSError *error;
NSData *crossTenantAccessPolicyConfigurationPartnerData = [crossTenantAccessPolicyConfigurationPartner getSerializedDataWithError:&error];
[urlRequest setHTTPBody:crossTenantAccessPolicyConfigurationPartnerData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```