---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DelegatedAdminRelationship delegatedAdminRelationship = new DelegatedAdminRelationship();
delegatedAdminRelationship.setDisplayName("Updated Contoso admin relationship");
PeriodAndDuration duration = PeriodAndDuration.ofDuration(Duration.parse("P31D"));
delegatedAdminRelationship.setDuration(duration);
DelegatedAdminRelationshipCustomerParticipant customer = new DelegatedAdminRelationshipCustomerParticipant();
customer.setTenantId("52eaad04-13a2-4a2f-9ce8-93a294fadf36");
delegatedAdminRelationship.setCustomer(customer);
DelegatedAdminAccessDetails accessDetails = new DelegatedAdminAccessDetails();
LinkedList<UnifiedRole> unifiedRoles = new LinkedList<UnifiedRole>();
UnifiedRole unifiedRole = new UnifiedRole();
unifiedRole.setRoleDefinitionId("44367163-eba1-44c3-98af-f5787879f96a");
unifiedRoles.add(unifiedRole);
UnifiedRole unifiedRole1 = new UnifiedRole();
unifiedRole1.setRoleDefinitionId("29232cdf-9323-42fd-ade2-1d097af3e4de");
unifiedRoles.add(unifiedRole1);
UnifiedRole unifiedRole2 = new UnifiedRole();
unifiedRole2.setRoleDefinitionId("69091246-20e8-4a56-aa4d-066075b2a7a8");
unifiedRoles.add(unifiedRole2);
UnifiedRole unifiedRole3 = new UnifiedRole();
unifiedRole3.setRoleDefinitionId("3a2c62db-5318-420d-8d74-23affee5d9d5");
unifiedRoles.add(unifiedRole3);
accessDetails.setUnifiedRoles(unifiedRoles);
delegatedAdminRelationship.setAccessDetails(accessDetails);
PeriodAndDuration autoExtendDuration = PeriodAndDuration.ofDuration(Duration.parse("P180D"));
delegatedAdminRelationship.setAutoExtendDuration(autoExtendDuration);
DelegatedAdminRelationship result = graphClient.tenantRelationships().delegatedAdminRelationships().byDelegatedAdminRelationshipId("{delegatedAdminRelationship-id}").patch(delegatedAdminRelationship, requestConfiguration -> {
	requestConfiguration.headers.add("If-Match", "W/\"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw==\"");
});


```