---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CrossTenantAccessPolicyConfigurationDefault crossTenantAccessPolicyConfigurationDefault = new CrossTenantAccessPolicyConfigurationDefault();
CrossTenantAccessPolicyB2BSetting b2bCollaborationOutbound = new CrossTenantAccessPolicyB2BSetting();
CrossTenantAccessPolicyTargetConfiguration usersAndGroups = new CrossTenantAccessPolicyTargetConfiguration();
usersAndGroups.accessType = CrossTenantAccessPolicyTargetConfigurationAccessType.BLOCKED;
LinkedList<CrossTenantAccessPolicyTarget> targetsList = new LinkedList<CrossTenantAccessPolicyTarget>();
CrossTenantAccessPolicyTarget targets = new CrossTenantAccessPolicyTarget();
targets.target = "0be493dc-cb56-4a53-936f-9cf64410b8b0";
targets.targetType = CrossTenantAccessPolicyTargetType.GROUP;
targetsList.add(targets);
usersAndGroups.targets = targetsList;
b2bCollaborationOutbound.usersAndGroups = usersAndGroups;
CrossTenantAccessPolicyTargetConfiguration applications = new CrossTenantAccessPolicyTargetConfiguration();
applications.accessType = CrossTenantAccessPolicyTargetConfigurationAccessType.BLOCKED;
LinkedList<CrossTenantAccessPolicyTarget> targetsList1 = new LinkedList<CrossTenantAccessPolicyTarget>();
CrossTenantAccessPolicyTarget targets1 = new CrossTenantAccessPolicyTarget();
targets1.target = "AllApplications";
targets1.targetType = CrossTenantAccessPolicyTargetType.APPLICATION;
targetsList1.add(targets1);
applications.targets = targetsList1;
b2bCollaborationOutbound.applications = applications;
crossTenantAccessPolicyConfigurationDefault.b2bCollaborationOutbound = b2bCollaborationOutbound;

graphClient.policies().crossTenantAccessPolicy().default()
	.buildRequest()
	.patch(crossTenantAccessPolicyConfigurationDefault);

```