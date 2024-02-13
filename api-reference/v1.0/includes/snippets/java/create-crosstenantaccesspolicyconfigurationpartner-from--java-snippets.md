---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CrossTenantAccessPolicyConfigurationPartner crossTenantAccessPolicyConfigurationPartner = new CrossTenantAccessPolicyConfigurationPartner();
crossTenantAccessPolicyConfigurationPartner.setTenantId("3d0f5dec-5d3d-455c-8016-e2af1ae4d31a");
CrossTenantAccessPolicyB2BSetting b2bDirectConnectOutbound = new CrossTenantAccessPolicyB2BSetting();
CrossTenantAccessPolicyTargetConfiguration usersAndGroups = new CrossTenantAccessPolicyTargetConfiguration();
usersAndGroups.setAccessType(CrossTenantAccessPolicyTargetConfigurationAccessType.Blocked);
LinkedList<CrossTenantAccessPolicyTarget> targets = new LinkedList<CrossTenantAccessPolicyTarget>();
CrossTenantAccessPolicyTarget crossTenantAccessPolicyTarget = new CrossTenantAccessPolicyTarget();
crossTenantAccessPolicyTarget.setTarget("6f546279-4da5-4b53-a095-09ea0cef9971");
crossTenantAccessPolicyTarget.setTargetType(CrossTenantAccessPolicyTargetType.Group);
targets.add(crossTenantAccessPolicyTarget);
usersAndGroups.setTargets(targets);
b2bDirectConnectOutbound.setUsersAndGroups(usersAndGroups);
crossTenantAccessPolicyConfigurationPartner.setB2bDirectConnectOutbound(b2bDirectConnectOutbound);
CrossTenantAccessPolicyB2BSetting b2bDirectConnectInbound = new CrossTenantAccessPolicyB2BSetting();
CrossTenantAccessPolicyTargetConfiguration applications = new CrossTenantAccessPolicyTargetConfiguration();
applications.setAccessType(CrossTenantAccessPolicyTargetConfigurationAccessType.Allowed);
LinkedList<CrossTenantAccessPolicyTarget> targets1 = new LinkedList<CrossTenantAccessPolicyTarget>();
CrossTenantAccessPolicyTarget crossTenantAccessPolicyTarget1 = new CrossTenantAccessPolicyTarget();
crossTenantAccessPolicyTarget1.setTarget("Office365");
crossTenantAccessPolicyTarget1.setTargetType(CrossTenantAccessPolicyTargetType.Application);
targets1.add(crossTenantAccessPolicyTarget1);
applications.setTargets(targets1);
b2bDirectConnectInbound.setApplications(applications);
crossTenantAccessPolicyConfigurationPartner.setB2bDirectConnectInbound(b2bDirectConnectInbound);
CrossTenantAccessPolicyConfigurationPartner result = graphClient.policies().crossTenantAccessPolicy().partners().post(crossTenantAccessPolicyConfigurationPartner);


```