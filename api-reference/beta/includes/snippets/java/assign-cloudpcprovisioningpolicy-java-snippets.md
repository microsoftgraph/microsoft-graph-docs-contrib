---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<CloudPcProvisioningPolicyAssignment> assignmentsList = new LinkedList<CloudPcProvisioningPolicyAssignment>();
CloudPcProvisioningPolicyAssignment assignments = new CloudPcProvisioningPolicyAssignment();
assignments.id = "b0c2d35f-3385-46c8-a6f5-6c3dfad7708b_64ff06de-9c00-4a5a-98b5-7f5abe26ffff";
CloudPcManagementGroupAssignmentTarget target = new CloudPcManagementGroupAssignmentTarget();
target.groupId = "64ff06de-9c00-4a5a-98b5-7f5abe26ffff";
assignments.target = target;

assignmentsList.add(assignments);
CloudPcProvisioningPolicyAssignmentCollectionResponse cloudPcProvisioningPolicyAssignmentCollectionResponse = new CloudPcProvisioningPolicyAssignmentCollectionResponse();
cloudPcProvisioningPolicyAssignmentCollectionResponse.value = assignmentsList;
CloudPcProvisioningPolicyAssignmentCollectionPage cloudPcProvisioningPolicyAssignmentCollectionPage = new CloudPcProvisioningPolicyAssignmentCollectionPage(cloudPcProvisioningPolicyAssignmentCollectionResponse, null);

graphClient.deviceManagement().virtualEndpoint().provisioningPolicies("{id}")
	.assign(CloudPcProvisioningPolicyAssignParameterSet
		.newBuilder()
		.withAssignments(assignmentsList)
		.build())
	.buildRequest()
	.post();

```