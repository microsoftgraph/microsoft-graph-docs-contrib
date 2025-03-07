---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewGroup()


assignedLabel := graphmodels.NewAssignedLabel()
labelId := "45cd0c48-c540-4358-ad79-a3658cdc5b88"
assignedLabel.SetLabelId(&labelId) 

assignedLabels := []graphmodels.AssignedLabelable {
	assignedLabel,
}
requestBody.SetAssignedLabels(assignedLabels)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
groups, err := graphClient.Groups().ByGroupId("group-id").Patch(context.Background(), requestBody, nil)


```