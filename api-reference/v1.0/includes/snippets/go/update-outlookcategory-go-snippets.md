---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewOutlookCategory()
color := graphmodels.PRESET15_CATEGORYCOLOR 
requestBody.SetColor(&color) 

result, err := graphClient.Me().Outlook().MasterCategories().ByMasterCategorieId("outlookCategory-id").Patch(context.Background(), requestBody, nil)


```