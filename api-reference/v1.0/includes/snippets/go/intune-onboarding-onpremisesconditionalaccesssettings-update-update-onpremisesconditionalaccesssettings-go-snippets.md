---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

result, err := graphClient.DeviceManagement().ConditionalAccessSettings().Patch(context.Background(), requestBody, nil)


```