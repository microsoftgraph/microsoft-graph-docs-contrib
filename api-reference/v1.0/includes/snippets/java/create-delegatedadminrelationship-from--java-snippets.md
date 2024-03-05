---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DelegatedAdminRelationship delegatedAdminRelationship = new DelegatedAdminRelationship();
delegatedAdminRelationship.setDisplayName("Contoso admin relationship");
PeriodAndDuration duration = PeriodAndDuration.ofDuration(Duration.parse("P730D"));
delegatedAdminRelationship.setDuration(duration);
DelegatedAdminRelationshipCustomerParticipant customer = new DelegatedAdminRelationshipCustomerParticipant();
customer.setTenantId("4b827261-d21f-4aa9-b7db-7fa1f56fb163");
customer.setDisplayName("Contoso subsidiary Inc");
delegatedAdminRelationship.setCustomer(customer);
DelegatedAdminAccessDetails accessDetails = new DelegatedAdminAccessDetails();
LinkedList<UnifiedRole> unifiedRoles = new LinkedList<UnifiedRole>();
UnifiedRole unifiedRole = new UnifiedRole();
unifiedRole.setRoleDefinitionId("29232cdf-9323-42fd-ade2-1d097af3e4de");
unifiedRoles.add(unifiedRole);
UnifiedRole unifiedRole1 = new UnifiedRole();
unifiedRole1.setRoleDefinitionId("3a2c62db-5318-420d-8d74-23affee5d9d5");
unifiedRoles.add(unifiedRole1);
accessDetails.setUnifiedRoles(unifiedRoles);
delegatedAdminRelationship.setAccessDetails(accessDetails);
PeriodAndDuration autoExtendDuration = PeriodAndDuration.ofDuration(Duration.parse("P180D"));
delegatedAdminRelationship.setAutoExtendDuration(autoExtendDuration);
DelegatedAdminRelationship result = graphClient.tenantRelationships().delegatedAdminRelationships().post(delegatedAdminRelationship);


```