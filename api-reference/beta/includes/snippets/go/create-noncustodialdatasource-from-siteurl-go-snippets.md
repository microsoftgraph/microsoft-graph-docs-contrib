---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsediscovery "github.com/microsoftgraph/msgraph-beta-sdk-go/models/ediscovery"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsediscovery.NewNoncustodialDataSource()
applyHoldToSource := false
requestBody.SetApplyHoldToSource(&applyHoldToSource) 
dataSource := graphmodelsediscovery.NewSiteSource()
site := graphmodels.NewSite()
webUrl := "https://contoso.sharepoint.com/sites/SecretSite"
site.SetWebUrl(&webUrl) 
dataSource.SetSite(site)
requestBody.SetDataSource(dataSource)

noncustodialDataSources, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").NoncustodialDataSources().Post(context.Background(), requestBody, nil)


```