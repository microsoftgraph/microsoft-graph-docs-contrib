---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//ediscovery"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSiteSource()
site := graphmodels.NewSite()
webUrl := "https://contoso.sharepoint.com/sites/HumanResources"
site.SetWebUrl(&webUrl) 
requestBody.SetSite(site)

result, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").Custodians().ByCustodianId("custodian-id").SiteSources().Post(context.Background(), requestBody, nil)


```