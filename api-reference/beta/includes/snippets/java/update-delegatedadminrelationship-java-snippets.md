---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("If-Match", "W/\"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw==\""));

DelegatedAdminRelationship delegatedAdminRelationship = new DelegatedAdminRelationship();
delegatedAdminRelationship.displayName = "Updated Contoso admin relationship";
delegatedAdminRelationship.duration = DatatypeFactory.newInstance().newDuration("P31D");
DelegatedAdminRelationshipCustomerParticipant customer = new DelegatedAdminRelationshipCustomerParticipant();
customer.tenantId = "52eaad04-13a2-4a2f-9ce8-93a294fadf36";
delegatedAdminRelationship.customer = customer;
DelegatedAdminAccessDetails accessDetails = new DelegatedAdminAccessDetails();
LinkedList<UnifiedRole> unifiedRolesList = new LinkedList<UnifiedRole>();
UnifiedRole unifiedRoles = new UnifiedRole();
unifiedRoles.roleDefinitionId = "44367163-eba1-44c3-98af-f5787879f96a";
unifiedRolesList.add(unifiedRoles);
UnifiedRole unifiedRoles1 = new UnifiedRole();
unifiedRoles1.roleDefinitionId = "29232cdf-9323-42fd-ade2-1d097af3e4de";
unifiedRolesList.add(unifiedRoles1);
UnifiedRole unifiedRoles2 = new UnifiedRole();
unifiedRoles2.roleDefinitionId = "69091246-20e8-4a56-aa4d-066075b2a7a8";
unifiedRolesList.add(unifiedRoles2);
UnifiedRole unifiedRoles3 = new UnifiedRole();
unifiedRoles3.roleDefinitionId = "3a2c62db-5318-420d-8d74-23affee5d9d5";
unifiedRolesList.add(unifiedRoles3);
accessDetails.unifiedRoles = unifiedRolesList;
delegatedAdminRelationship.accessDetails = accessDetails;

graphClient.tenantRelationships().delegatedAdminRelationships("5d027261-d21f-4aa9-b7db-7fa1f56fb163-8777b240-c6f0-4469-9e98-a3205431b836")
	.buildRequest( requestOptions )
	.patch(delegatedAdminRelationship);

```