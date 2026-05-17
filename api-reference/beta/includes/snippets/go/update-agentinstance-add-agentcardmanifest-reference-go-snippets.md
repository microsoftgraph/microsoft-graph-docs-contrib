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

requestBody := graphmodels.NewAgentInstance()
additionalData := map[string]interface{}{
	"agentCardManifest@odata.bind" : "https://graph.microsoft.com/beta/agentRegistry/agentCardManifests('employee-assistant')", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
agentInstances, err := graphClient.AgentRegistry().AgentInstances().ByAgentInstanceId("agentInstance-id").Patch(context.Background(), requestBody, nil)


```