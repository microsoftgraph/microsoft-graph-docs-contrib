---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DelegatedAdminRelationship delegatedAdminRelationship = new DelegatedAdminRelationship();
delegatedAdminRelationship.displayName = "Contoso admin relationship";
delegatedAdminRelationship.duration = DatatypeFactory.newInstance().newDuration("P730D");
DelegatedAdminRelationshipCustomerParticipant customer = new DelegatedAdminRelationshipCustomerParticipant();
customer.tenantId = "4b827261-d21f-4aa9-b7db-7fa1f56fb163";
customer.displayName = "Contoso subsidiary Inc";
delegatedAdminRelationship.customer = customer;
DelegatedAdminAccessDetails accessDetails = new DelegatedAdminAccessDetails();
LinkedList<UnifiedRole> unifiedRolesList = new LinkedList<UnifiedRole>();
UnifiedRole unifiedRoles = new UnifiedRole();
unifiedRoles.roleDefinitionId = "29232cdf-9323-42fd-ade2-1d097af3e4de";
unifiedRolesList.add(unifiedRoles);
UnifiedRole unifiedRoles1 = new UnifiedRole();
unifiedRoles1.roleDefinitionId = "3a2c62db-5318-420d-8d74-23affee5d9d5";
unifiedRolesList.add(unifiedRoles1);
accessDetails.unifiedRoles = unifiedRolesList;
delegatedAdminRelationship.accessDetails = accessDetails;

graphClient.tenantRelationships().delegatedAdminRelationships()
	.buildRequest()
	.post(delegatedAdminRelationship);

```