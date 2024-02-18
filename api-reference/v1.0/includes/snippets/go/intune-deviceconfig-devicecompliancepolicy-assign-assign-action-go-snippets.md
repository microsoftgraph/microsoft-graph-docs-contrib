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


deviceCompliancePolicyAssignment := graphmodels.NewDeviceCompliancePolicyAssignment()
id := "92dc3fef-3fef-92dc-ef3f-dc92ef3fdc92"
deviceCompliancePolicyAssignment.SetId(&id) 
target := graphmodels.NewConfigurationManagerCollectionAssignmentTarget()
collectionId := "Collection Id value"
target.SetCollectionId(&collectionId) 
deviceCompliancePolicyAssignment.SetTarget(target)

assignments := []graphmodels.DeviceCompliancePolicyAssignmentable {
	deviceCompliancePolicyAssignment,
}
requestBody.SetAssignments(assignments)

assign, err := graphClient.DeviceManagement().DeviceCompliancePolicies().ByDeviceCompliancePolicyId("deviceCompliancePolicy-id").Assign().Post(context.Background(), requestBody, nil)


```