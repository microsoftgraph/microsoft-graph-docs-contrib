---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/tenantRelationships/delegatedAdminRelationships/5d027261-d21f-4aa9-b7db-7fa1f56fb163-8777b240-c6f0-4469-9e98-a3205431b836"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"W/\"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw==\"" forHTTPHeaderField:@"If-Match"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphDelegatedAdminRelationship *delegatedAdminRelationship = [[MSGraphDelegatedAdminRelationship alloc] init];
[delegatedAdminRelationship setDisplayName:@"Updated Contoso admin relationship"];
[delegatedAdminRelationship setDuration:@"P31D"];
MSGraphDelegatedAdminRelationshipCustomerParticipant *customer = [[MSGraphDelegatedAdminRelationshipCustomerParticipant alloc] init];
[customer setTenantId:@"52eaad04-13a2-4a2f-9ce8-93a294fadf36"];
[delegatedAdminRelationship setCustomer:customer];
MSGraphDelegatedAdminAccessDetails *accessDetails = [[MSGraphDelegatedAdminAccessDetails alloc] init];
NSMutableArray *unifiedRolesList = [[NSMutableArray alloc] init];
MSGraphUnifiedRole *unifiedRoles = [[MSGraphUnifiedRole alloc] init];
[unifiedRoles setRoleDefinitionId:@"44367163-eba1-44c3-98af-f5787879f96a"];
[unifiedRolesList addObject: unifiedRoles];
MSGraphUnifiedRole *unifiedRoles = [[MSGraphUnifiedRole alloc] init];
[unifiedRoles setRoleDefinitionId:@"29232cdf-9323-42fd-ade2-1d097af3e4de"];
[unifiedRolesList addObject: unifiedRoles];
MSGraphUnifiedRole *unifiedRoles = [[MSGraphUnifiedRole alloc] init];
[unifiedRoles setRoleDefinitionId:@"69091246-20e8-4a56-aa4d-066075b2a7a8"];
[unifiedRolesList addObject: unifiedRoles];
MSGraphUnifiedRole *unifiedRoles = [[MSGraphUnifiedRole alloc] init];
[unifiedRoles setRoleDefinitionId:@"3a2c62db-5318-420d-8d74-23affee5d9d5"];
[unifiedRolesList addObject: unifiedRoles];
[accessDetails setUnifiedRoles:unifiedRolesList];
[delegatedAdminRelationship setAccessDetails:accessDetails];

NSError *error;
NSData *delegatedAdminRelationshipData = [delegatedAdminRelationship getSerializedDataWithError:&error];
[urlRequest setHTTPBody:delegatedAdminRelationshipData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```