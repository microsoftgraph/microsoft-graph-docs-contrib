---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphplanner "github.com/microsoftgraph/msgraph-beta-sdk-go/planner"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("If-Match", "\"W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"\"")

configuration := &graphplanner.RostersItemAssignSensitivityLabelRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphplanner.NewAssignSensitivityLabelPostRequestBody()
assignmentMethod := graphmodels.STANDARD_SENSITIVITYLABELASSIGNMENTMETHOD 
requestBody.SetAssignmentMethod(&assignmentMethod) 
sensitivityLabelId := "7a4d7cc1-f72b-46a3-9831-02680eaf56f9"
requestBody.SetSensitivityLabelId(&sensitivityLabelId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
assignSensitivityLabel, err := graphClient.Planner().Rosters().ByPlannerRosterId("plannerRoster-id").AssignSensitivityLabel().Post(context.Background(), requestBody, configuration)


```