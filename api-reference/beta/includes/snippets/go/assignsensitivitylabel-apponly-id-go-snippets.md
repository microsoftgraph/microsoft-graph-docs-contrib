---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdrives "github.com/microsoftgraph/msgraph-beta-sdk-go/drives"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphdrives.NewAssignSensitivityLabelPostRequestBody()
sensitivityLabelId := "5feba255-812e-446a-ac59-a7044ef827b5"
requestBody.SetSensitivityLabelId(&sensitivityLabelId) 
assignmentMethod := graphmodels.STANDARD_SENSITIVITYLABELASSIGNMENTMETHOD 
requestBody.SetAssignmentMethod(&assignmentMethod) 
justificationText := "test_justification"
requestBody.SetJustificationText(&justificationText) 
additionalData := map[string]interface{}{
appliedByUser := graph.New()
id := "4a2ec3c4-1b2d-3e4f-5a6b-7c8d9e0f1a2b"
appliedByUser.SetId(&id) 
	requestBody.SetAppliedByUser(appliedByUser)
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Drives().ByDriveId("drive-id").Items().ByDriveItemId("driveItem-id").AssignSensitivityLabel().Post(context.Background(), requestBody, nil)


```