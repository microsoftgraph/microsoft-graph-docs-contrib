---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewOnPremisesConditionalAccessSettings()
enabled := true
requestBody.SetEnabled(&enabled) 
includedGroups := []uuid.UUID {
	uuid.MustParse("77c9d466-d466-77c9-66d4-c97766d4c977"),
}
requestBody.SetIncludedGroups(includedGroups)
excludedGroups := []uuid.UUID {
	uuid.MustParse("2a0afae4-fae4-2a0a-e4fa-0a2ae4fa0a2a"),
}
requestBody.SetExcludedGroups(excludedGroups)
overrideDefaultRule := true
requestBody.SetOverrideDefaultRule(&overrideDefaultRule) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
conditionalAccessSettings, err := graphClient.DeviceManagement().ConditionalAccessSettings().Patch(context.Background(), requestBody, nil)


```