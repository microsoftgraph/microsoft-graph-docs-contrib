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


requestBody := graphmodels.NewBrowserSiteList()
displayName := "Production Site List A"
requestBody.SetDisplayName(&displayName) 
description := "Production site list for team A"
requestBody.SetDescription(&description) 

siteLists, err := graphClient.Admin().Edge().InternetExplorerMode().SiteLists().Post(context.Background(), requestBody, nil)


```