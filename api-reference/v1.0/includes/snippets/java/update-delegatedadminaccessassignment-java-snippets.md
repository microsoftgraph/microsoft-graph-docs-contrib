---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DelegatedAdminAccessAssignment delegatedAdminAccessAssignment = new DelegatedAdminAccessAssignment();
DelegatedAdminAccessDetails accessDetails = new DelegatedAdminAccessDetails();
LinkedList<UnifiedRole> unifiedRoles = new LinkedList<UnifiedRole>();
UnifiedRole unifiedRole = new UnifiedRole();
unifiedRole.setRoleDefinitionId("88d8e3e3-8f55-4a1e-953a-9b9898b8876b");
unifiedRoles.add(unifiedRole);
UnifiedRole unifiedRole1 = new UnifiedRole();
unifiedRole1.setRoleDefinitionId("44367163-eba1-44c3-98af-f5787879f96a");
unifiedRoles.add(unifiedRole1);
UnifiedRole unifiedRole2 = new UnifiedRole();
unifiedRole2.setRoleDefinitionId("729827e3-9c14-49f7-bb1b-9608f156bbb8");
unifiedRoles.add(unifiedRole2);
accessDetails.setUnifiedRoles(unifiedRoles);
delegatedAdminAccessAssignment.setAccessDetails(accessDetails);
DelegatedAdminAccessAssignment result = graphClient.tenantRelationships().delegatedAdminRelationships().byDelegatedAdminRelationshipId("{delegatedAdminRelationship-id}").accessAssignments().byDelegatedAdminAccessAssignmentId("{delegatedAdminAccessAssignment-id}").patch(delegatedAdminAccessAssignment, requestConfiguration -> {
	requestConfiguration.headers.add("If-Match", "W/\"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw==\"");
});


```