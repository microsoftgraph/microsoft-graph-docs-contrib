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


requestBody := graphmodels.NewTiIndicator()
description := "description-updated"
requestBody.SetDescription(&description) 

result, err := graphClient.Security().TiIndicators().ByTiIndicatorId("tiIndicator-id").Patch(context.Background(), requestBody, nil)


```