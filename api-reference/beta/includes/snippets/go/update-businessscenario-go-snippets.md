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

requestBody := graphmodels.NewBusinessScenario()
ownerAppIds := []string {
	"44109254-4b2b-7a33-76ee-c890a167b295",
	"13eb9d8b-1d63-4153-9417-3a69ab200a78",
}
requestBody.SetOwnerAppIds(ownerAppIds)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
businessScenarios, err := graphClient.Solutions().BusinessScenarios().ByBusinessScenarioId("businessScenario-id").Patch(context.Background(), requestBody, nil)


```