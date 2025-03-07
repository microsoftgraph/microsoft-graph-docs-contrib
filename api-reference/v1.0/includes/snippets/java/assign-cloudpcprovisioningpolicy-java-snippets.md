---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.virtualendpoint.provisioningpolicies.item.assign.AssignPostRequestBody assignPostRequestBody = new com.microsoft.graph.devicemanagement.virtualendpoint.provisioningpolicies.item.assign.AssignPostRequestBody();
LinkedList<CloudPcProvisioningPolicyAssignment> assignments = new LinkedList<CloudPcProvisioningPolicyAssignment>();
CloudPcProvisioningPolicyAssignment cloudPcProvisioningPolicyAssignment = new CloudPcProvisioningPolicyAssignment();
CloudPcManagementGroupAssignmentTarget target = new CloudPcManagementGroupAssignmentTarget();
target.setOdataType("microsoft.graph.cloudPcManagementGroupAssignmentTarget");
target.setGroupId("64ff06de-9c00-4a5a-98b5-7f5abe26ffff");
cloudPcProvisioningPolicyAssignment.setTarget(target);
assignments.add(cloudPcProvisioningPolicyAssignment);
assignPostRequestBody.setAssignments(assignments);
graphClient.deviceManagement().virtualEndpoint().provisioningPolicies().byCloudPcProvisioningPolicyId("{cloudPcProvisioningPolicy-id}").assign().post(assignPostRequestBody);


```