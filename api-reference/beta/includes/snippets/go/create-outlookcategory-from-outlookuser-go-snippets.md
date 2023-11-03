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


requestBody := graphmodels.NewOutlookCategory()
displayName := "Project expenses"
requestBody.SetDisplayName(&displayName) 
color := graphmodels.PRESET9_CATEGORYCOLOR 
requestBody.SetColor(&color) 

masterCategories, err := graphClient.Me().Outlook().MasterCategories().Post(context.Background(), requestBody, nil)


```