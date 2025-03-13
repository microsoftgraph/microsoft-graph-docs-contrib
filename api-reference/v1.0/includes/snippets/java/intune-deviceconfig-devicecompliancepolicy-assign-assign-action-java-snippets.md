---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.devicecompliancepolicies.item.assign.AssignPostRequestBody assignPostRequestBody = new com.microsoft.graph.devicemanagement.devicecompliancepolicies.item.assign.AssignPostRequestBody();
LinkedList<DeviceCompliancePolicyAssignment> assignments = new LinkedList<DeviceCompliancePolicyAssignment>();
DeviceCompliancePolicyAssignment deviceCompliancePolicyAssignment = new DeviceCompliancePolicyAssignment();
deviceCompliancePolicyAssignment.setOdataType("#microsoft.graph.deviceCompliancePolicyAssignment");
deviceCompliancePolicyAssignment.setId("92dc3fef-3fef-92dc-ef3f-dc92ef3fdc92");
ConfigurationManagerCollectionAssignmentTarget target = new ConfigurationManagerCollectionAssignmentTarget();
target.setOdataType("microsoft.graph.configurationManagerCollectionAssignmentTarget");
target.setCollectionId("Collection Id value");
deviceCompliancePolicyAssignment.setTarget(target);
assignments.add(deviceCompliancePolicyAssignment);
assignPostRequestBody.setAssignments(assignments);
var result = graphClient.deviceManagement().deviceCompliancePolicies().byDeviceCompliancePolicyId("{deviceCompliancePolicy-id}").assign().post(assignPostRequestBody);


```