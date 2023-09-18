---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-sdk-go/models/security"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelssecurity.NewEdiscoveryNoncustodialDataSource()
dataSource := graphmodelssecurity.NewSiteSource()
site := graphmodels.NewSite()
webUrl := "https://m365x809305.sharepoint.com/sites/Design-topsecret"
site.SetWebUrl(&webUrl) 
dataSource.SetSite(site)
requestBody.SetDataSource(dataSource)

noncustodialDataSources, err := graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").NoncustodialDataSources().Post(context.Background(), requestBody, nil)


```