---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceCompliancePolicyAssignment deviceCompliancePolicyAssignment = new DeviceCompliancePolicyAssignment();
deviceCompliancePolicyAssignment.setOdataType("#microsoft.graph.deviceCompliancePolicyAssignment");
ConfigurationManagerCollectionAssignmentTarget target = new ConfigurationManagerCollectionAssignmentTarget();
target.setOdataType("microsoft.graph.configurationManagerCollectionAssignmentTarget");
target.setCollectionId("Collection Id value");
deviceCompliancePolicyAssignment.setTarget(target);
DeviceCompliancePolicyAssignment result = graphClient.deviceManagement().deviceCompliancePolicies().byDeviceCompliancePolicyId("{deviceCompliancePolicy-id}").assignments().byDeviceCompliancePolicyAssignmentId("{deviceCompliancePolicyAssignment-id}").patch(deviceCompliancePolicyAssignment);


```