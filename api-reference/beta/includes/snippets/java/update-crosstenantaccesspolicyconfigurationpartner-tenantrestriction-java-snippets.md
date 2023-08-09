---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CrossTenantAccessPolicyConfigurationPartner crossTenantAccessPolicyConfigurationPartner = new CrossTenantAccessPolicyConfigurationPartner();
CrossTenantAccessPolicyTenantRestrictions tenantRestrictions = new CrossTenantAccessPolicyTenantRestrictions();
CrossTenantAccessPolicyTargetConfiguration usersAndGroups = new CrossTenantAccessPolicyTargetConfiguration();
usersAndGroups.accessType = CrossTenantAccessPolicyTargetConfigurationAccessType.ALLOWED;
LinkedList<CrossTenantAccessPolicyTarget> targetsList = new LinkedList<CrossTenantAccessPolicyTarget>();
CrossTenantAccessPolicyTarget targets = new CrossTenantAccessPolicyTarget();
targets.target = "AllUsers";
targets.targetType = CrossTenantAccessPolicyTargetType.USER;
targetsList.add(targets);
usersAndGroups.targets = targetsList;
tenantRestrictions.usersAndGroups = usersAndGroups;
CrossTenantAccessPolicyTargetConfiguration applications = new CrossTenantAccessPolicyTargetConfiguration();
applications.accessType = CrossTenantAccessPolicyTargetConfigurationAccessType.ALLOWED;
LinkedList<CrossTenantAccessPolicyTarget> targetsList1 = new LinkedList<CrossTenantAccessPolicyTarget>();
CrossTenantAccessPolicyTarget targets1 = new CrossTenantAccessPolicyTarget();
targets1.target = "Office365";
targets1.targetType = CrossTenantAccessPolicyTargetType.APPLICATION;
targetsList1.add(targets1);
applications.targets = targetsList1;
tenantRestrictions.applications = applications;
crossTenantAccessPolicyConfigurationPartner.tenantRestrictions = tenantRestrictions;

graphClient.policies().crossTenantAccessPolicy().partners("90e29127-71ad-49c7-9ce8-db3f41ea06f1")
	.buildRequest()
	.patch(crossTenantAccessPolicyConfigurationPartner);

```