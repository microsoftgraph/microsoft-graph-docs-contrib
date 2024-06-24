---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CrossTenantAccessPolicyConfigurationDefault crossTenantAccessPolicyConfigurationDefault = new CrossTenantAccessPolicyConfigurationDefault();
CrossTenantAccessPolicyB2BSetting b2bCollaborationOutbound = new CrossTenantAccessPolicyB2BSetting();
CrossTenantAccessPolicyTargetConfiguration usersAndGroups = new CrossTenantAccessPolicyTargetConfiguration();
usersAndGroups.setAccessType(CrossTenantAccessPolicyTargetConfigurationAccessType.Blocked);
LinkedList<CrossTenantAccessPolicyTarget> targets = new LinkedList<CrossTenantAccessPolicyTarget>();
CrossTenantAccessPolicyTarget crossTenantAccessPolicyTarget = new CrossTenantAccessPolicyTarget();
crossTenantAccessPolicyTarget.setTarget("0be493dc-cb56-4a53-936f-9cf64410b8b0");
crossTenantAccessPolicyTarget.setTargetType(CrossTenantAccessPolicyTargetType.Group);
targets.add(crossTenantAccessPolicyTarget);
usersAndGroups.setTargets(targets);
b2bCollaborationOutbound.setUsersAndGroups(usersAndGroups);
CrossTenantAccessPolicyTargetConfiguration applications = new CrossTenantAccessPolicyTargetConfiguration();
applications.setAccessType(CrossTenantAccessPolicyTargetConfigurationAccessType.Blocked);
LinkedList<CrossTenantAccessPolicyTarget> targets1 = new LinkedList<CrossTenantAccessPolicyTarget>();
CrossTenantAccessPolicyTarget crossTenantAccessPolicyTarget1 = new CrossTenantAccessPolicyTarget();
crossTenantAccessPolicyTarget1.setTarget("AllApplications");
crossTenantAccessPolicyTarget1.setTargetType(CrossTenantAccessPolicyTargetType.Application);
targets1.add(crossTenantAccessPolicyTarget1);
applications.setTargets(targets1);
b2bCollaborationOutbound.setApplications(applications);
crossTenantAccessPolicyConfigurationDefault.setB2bCollaborationOutbound(b2bCollaborationOutbound);
CrossTenantAccessPolicyConfigurationDefault result = graphClient.policies().crossTenantAccessPolicy().defaultEscaped().patch(crossTenantAccessPolicyConfigurationDefault);


```