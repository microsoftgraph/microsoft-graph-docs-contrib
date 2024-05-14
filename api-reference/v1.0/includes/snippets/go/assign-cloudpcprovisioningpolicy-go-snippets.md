---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-sdk-go/devicemanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdevicemanagement.NewAssignPostRequestBody()


cloudPcProvisioningPolicyAssignment := graphmodels.NewCloudPcProvisioningPolicyAssignment()
target := graphmodels.NewCloudPcManagementGroupAssignmentTarget()
groupId := "64ff06de-9c00-4a5a-98b5-7f5abe26ffff"
target.SetGroupId(&groupId) 
cloudPcProvisioningPolicyAssignment.SetTarget(target)

assignments := []graphmodels.CloudPcProvisioningPolicyAssignmentable {
	cloudPcProvisioningPolicyAssignment,
}
requestBody.SetAssignments(assignments)

graphClient.DeviceManagement().VirtualEndpoint().ProvisioningPolicies().ByCloudPcProvisioningPolicyId("cloudPcProvisioningPolicy-id").Assign().Post(context.Background(), requestBody, nil)


```