---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/tenantRelationships/delegatedAdminRelationships/5e5594d3-6f82-458b-b567-77db4811f0cd-00000000-0000-0000-0000-000000001234/accessAssignments/da9d6cf90-083a-47dc-ace2-1da98be3f344"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"W/\"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw==\"" forHTTPHeaderField:@"If-Match"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphDelegatedAdminAccessAssignment *delegatedAdminAccessAssignment = [[MSGraphDelegatedAdminAccessAssignment alloc] init];
MSGraphDelegatedAdminAccessDetails *accessDetails = [[MSGraphDelegatedAdminAccessDetails alloc] init];
NSMutableArray *unifiedRolesList = [[NSMutableArray alloc] init];
MSGraphUnifiedRole *unifiedRoles = [[MSGraphUnifiedRole alloc] init];
[unifiedRoles setRoleDefinitionId:@"88d8e3e3-8f55-4a1e-953a-9b9898b8876b"];
[unifiedRolesList addObject: unifiedRoles];
MSGraphUnifiedRole *unifiedRoles = [[MSGraphUnifiedRole alloc] init];
[unifiedRoles setRoleDefinitionId:@"44367163-eba1-44c3-98af-f5787879f96a"];
[unifiedRolesList addObject: unifiedRoles];
MSGraphUnifiedRole *unifiedRoles = [[MSGraphUnifiedRole alloc] init];
[unifiedRoles setRoleDefinitionId:@"729827e3-9c14-49f7-bb1b-9608f156bbb8"];
[unifiedRolesList addObject: unifiedRoles];
[accessDetails setUnifiedRoles:unifiedRolesList];
[delegatedAdminAccessAssignment setAccessDetails:accessDetails];

NSError *error;
NSData *delegatedAdminAccessAssignmentData = [delegatedAdminAccessAssignment getSerializedDataWithError:&error];
[urlRequest setHTTPBody:delegatedAdminAccessAssignmentData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```