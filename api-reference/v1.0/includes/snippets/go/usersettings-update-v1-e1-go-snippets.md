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


requestBody := graphmodels.NewUserSettings()
contributionToContentDiscoveryDisabled := true
requestBody.SetContributionToContentDiscoveryDisabled(&contributionToContentDiscoveryDisabled) 

result, err := graphClient.Me().Settings().Patch(context.Background(), requestBody, nil)


```