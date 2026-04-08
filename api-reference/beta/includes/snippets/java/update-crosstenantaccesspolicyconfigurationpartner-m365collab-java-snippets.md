---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CrossTenantAccessPolicyConfigurationPartner crossTenantAccessPolicyConfigurationPartner = new CrossTenantAccessPolicyConfigurationPartner();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 m365CollaborationInbound = new ();
 users = new ();
users.setAccessType("allowed");
LinkedList<Object> targets = new LinkedList<Object>();
 property = new ();
property.setTarget("AllUsers");
property.setTargetType("user");
targets.add(property);
users.setTargets(targets);
m365CollaborationInbound.setUsers(users);
additionalData.put("m365CollaborationInbound", m365CollaborationInbound);
crossTenantAccessPolicyConfigurationPartner.setAdditionalData(additionalData);
CrossTenantAccessPolicyConfigurationPartner result = graphClient.policies().crossTenantAccessPolicy().partners().byCrossTenantAccessPolicyConfigurationPartnerTenantId("{crossTenantAccessPolicyConfigurationPartner-tenantId}").patch(crossTenantAccessPolicyConfigurationPartner);


```