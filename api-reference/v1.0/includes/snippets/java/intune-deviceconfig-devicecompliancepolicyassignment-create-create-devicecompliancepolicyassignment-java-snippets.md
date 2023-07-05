---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceCompliancePolicyAssignment deviceCompliancePolicyAssignment = new DeviceCompliancePolicyAssignment();
ConfigurationManagerCollectionAssignmentTarget target = new ConfigurationManagerCollectionAssignmentTarget();
target.collectionId = "Collection Id value";
deviceCompliancePolicyAssignment.target = target;

graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}").assignments()
	.buildRequest()
	.post(deviceCompliancePolicyAssignment);

```