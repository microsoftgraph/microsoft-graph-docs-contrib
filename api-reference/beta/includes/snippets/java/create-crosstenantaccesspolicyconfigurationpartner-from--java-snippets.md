---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CrossTenantAccessPolicyConfigurationPartner crossTenantAccessPolicyConfigurationPartner = new CrossTenantAccessPolicyConfigurationPartner();
crossTenantAccessPolicyConfigurationPartner.tenantId = "3d0f5dec-5d3d-455c-8016-e2af1ae4d31a";
CrossTenantAccessPolicyB2BSetting b2bDirectConnectOutbound = new CrossTenantAccessPolicyB2BSetting();
CrossTenantAccessPolicyTargetConfiguration usersAndGroups = new CrossTenantAccessPolicyTargetConfiguration();
usersAndGroups.accessType = CrossTenantAccessPolicyTargetConfigurationAccessType.BLOCKED;
LinkedList<CrossTenantAccessPolicyTarget> targetsList = new LinkedList<CrossTenantAccessPolicyTarget>();
CrossTenantAccessPolicyTarget targets = new CrossTenantAccessPolicyTarget();
targets.target = "6f546279-4da5-4b53-a095-09ea0cef9971";
targets.targetType = CrossTenantAccessPolicyTargetType.GROUP;
targetsList.add(targets);
usersAndGroups.targets = targetsList;
b2bDirectConnectOutbound.usersAndGroups = usersAndGroups;
crossTenantAccessPolicyConfigurationPartner.b2bDirectConnectOutbound = b2bDirectConnectOutbound;
CrossTenantAccessPolicyB2BSetting b2bDirectConnectInbound = new CrossTenantAccessPolicyB2BSetting();
CrossTenantAccessPolicyTargetConfiguration applications = new CrossTenantAccessPolicyTargetConfiguration();
applications.accessType = CrossTenantAccessPolicyTargetConfigurationAccessType.ALLOWED;
LinkedList<CrossTenantAccessPolicyTarget> targetsList1 = new LinkedList<CrossTenantAccessPolicyTarget>();
CrossTenantAccessPolicyTarget targets1 = new CrossTenantAccessPolicyTarget();
targets1.target = "Office365";
targets1.targetType = CrossTenantAccessPolicyTargetType.APPLICATION;
targetsList1.add(targets1);
applications.targets = targetsList1;
b2bDirectConnectInbound.applications = applications;
crossTenantAccessPolicyConfigurationPartner.b2bDirectConnectInbound = b2bDirectConnectInbound;

graphClient.policies().crossTenantAccessPolicy().partners()
	.buildRequest()
	.post(crossTenantAccessPolicyConfigurationPartner);

```