---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CrossTenantAccessPolicyConfigurationDefault crossTenantAccessPolicyConfigurationDefault = new CrossTenantAccessPolicyConfigurationDefault();
CrossTenantAccessPolicyM365CollaborationInboundSetting m365CollaborationInbound = new CrossTenantAccessPolicyM365CollaborationInboundSetting();
CrossTenantAccessPolicyTargetConfiguration users = new CrossTenantAccessPolicyTargetConfiguration();
users.setAccessType(CrossTenantAccessPolicyTargetConfigurationAccessType.Allowed);
LinkedList<CrossTenantAccessPolicyTarget> targets = new LinkedList<CrossTenantAccessPolicyTarget>();
CrossTenantAccessPolicyTarget crossTenantAccessPolicyTarget = new CrossTenantAccessPolicyTarget();
crossTenantAccessPolicyTarget.setTarget("AllUsers");
crossTenantAccessPolicyTarget.setTargetType(CrossTenantAccessPolicyTargetType.User);
targets.add(crossTenantAccessPolicyTarget);
users.setTargets(targets);
m365CollaborationInbound.setUsers(users);
crossTenantAccessPolicyConfigurationDefault.setM365CollaborationInbound(m365CollaborationInbound);
CrossTenantAccessPolicyConfigurationDefault result = graphClient.policies().crossTenantAccessPolicy().defaultEscaped().patch(crossTenantAccessPolicyConfigurationDefault);


```