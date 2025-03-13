---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-sdk-go/devicemanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
assign, err := graphClient.DeviceManagement().DeviceCompliancePolicies().ByDeviceCompliancePolicyId("deviceCompliancePolicy-id").Assign().PostAsAssignPostResponse(context.Background(), requestBody, nil)


```