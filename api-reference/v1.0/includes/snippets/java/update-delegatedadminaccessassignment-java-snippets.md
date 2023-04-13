---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("If-Match", "W/\"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw==\""));

DelegatedAdminAccessAssignment delegatedAdminAccessAssignment = new DelegatedAdminAccessAssignment();
DelegatedAdminAccessDetails accessDetails = new DelegatedAdminAccessDetails();
LinkedList<UnifiedRole> unifiedRolesList = new LinkedList<UnifiedRole>();
UnifiedRole unifiedRoles = new UnifiedRole();
unifiedRoles.roleDefinitionId = "88d8e3e3-8f55-4a1e-953a-9b9898b8876b";
unifiedRolesList.add(unifiedRoles);
UnifiedRole unifiedRoles1 = new UnifiedRole();
unifiedRoles1.roleDefinitionId = "44367163-eba1-44c3-98af-f5787879f96a";
unifiedRolesList.add(unifiedRoles1);
UnifiedRole unifiedRoles2 = new UnifiedRole();
unifiedRoles2.roleDefinitionId = "729827e3-9c14-49f7-bb1b-9608f156bbb8";
unifiedRolesList.add(unifiedRoles2);
accessDetails.unifiedRoles = unifiedRolesList;
delegatedAdminAccessAssignment.accessDetails = accessDetails;

graphClient.tenantRelationships().delegatedAdminRelationships("5e5594d3-6f82-458b-b567-77db4811f0cd-00000000-0000-0000-0000-000000001234").accessAssignments("da9d6cf90-083a-47dc-ace2-1da98be3f344")
	.buildRequest( requestOptions )
	.patch(delegatedAdminAccessAssignment);

```