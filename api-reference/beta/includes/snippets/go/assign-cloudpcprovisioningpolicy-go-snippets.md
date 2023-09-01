---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdevicemanagement.NewAssignPostRequestBody()


cloudPcProvisioningPolicyAssignment := graphmodels.NewCloudPcProvisioningPolicyAssignment()
id := "b0c2d35f-3385-46c8-a6f5-6c3dfad7708b_64ff06de-9c00-4a5a-98b5-7f5abe26ffff"
cloudPcProvisioningPolicyAssignment.SetId(&id) 
target := graphmodels.NewCloudPcManagementGroupAssignmentTarget()
groupId := "64ff06de-9c00-4a5a-98b5-7f5abe26ffff"
target.SetGroupId(&groupId) 
cloudPcProvisioningPolicyAssignment.SetTarget(target)

assignments := []graphmodels.cloudPcProvisioningPolicyAssignmentable {
	cloudPcProvisioningPolicyAssignment,
}
requestBody.SetAssignments(assignments)

graphClient.DeviceManagement().VirtualEndpoint().ProvisioningPolicies().ByCloudPcProvisioningPolicyId("cloudPcProvisioningPolicy-id").Assign().Post(context.Background(), requestBody, nil)


```