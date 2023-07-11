---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewWorkPosition()
isCurrent := true
requestBody.SetIsCurrent(&isCurrent) 

result, err := graphClient.Me().Profile().Positions().ByPositionId("workPosition-id").Patch(context.Background(), requestBody, nil)


```