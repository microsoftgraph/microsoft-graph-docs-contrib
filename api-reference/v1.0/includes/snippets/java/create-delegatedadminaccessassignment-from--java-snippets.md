---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DelegatedAdminAccessAssignment delegatedAdminAccessAssignment = new DelegatedAdminAccessAssignment();
DelegatedAdminAccessContainer accessContainer = new DelegatedAdminAccessContainer();
accessContainer.setAccessContainerId("869713c9-0b28-4d08-8949-ae07ae1bf528");
accessContainer.setAccessContainerType(DelegatedAdminAccessContainerType.SecurityGroup);
delegatedAdminAccessAssignment.setAccessContainer(accessContainer);
DelegatedAdminAccessDetails accessDetails = new DelegatedAdminAccessDetails();
LinkedList<UnifiedRole> unifiedRoles = new LinkedList<UnifiedRole>();
UnifiedRole unifiedRole = new UnifiedRole();
unifiedRole.setRoleDefinitionId("29232cdf-9323-42fd-ade2-1d097af3e4de");
unifiedRoles.add(unifiedRole);
UnifiedRole unifiedRole1 = new UnifiedRole();
unifiedRole1.setRoleDefinitionId("f2ef992c-3afb-46b9-b7cf-a126ee74c451");
unifiedRoles.add(unifiedRole1);
UnifiedRole unifiedRole2 = new UnifiedRole();
unifiedRole2.setRoleDefinitionId("729827e3-9c14-49f7-bb1b-9608f156bbb8");
unifiedRoles.add(unifiedRole2);
UnifiedRole unifiedRole3 = new UnifiedRole();
unifiedRole3.setRoleDefinitionId("3a2c62db-5318-420d-8d74-23affee5d9d5");
unifiedRoles.add(unifiedRole3);
accessDetails.setUnifiedRoles(unifiedRoles);
delegatedAdminAccessAssignment.setAccessDetails(accessDetails);
DelegatedAdminAccessAssignment result = graphClient.tenantRelationships().delegatedAdminRelationships().byDelegatedAdminRelationshipId("{delegatedAdminRelationship-id}").accessAssignments().post(delegatedAdminAccessAssignment);


```