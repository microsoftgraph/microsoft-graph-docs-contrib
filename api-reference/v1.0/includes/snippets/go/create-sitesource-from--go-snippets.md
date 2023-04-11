---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models//security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSiteSource()
site := graphmodels.NewSite()
webUrl := "https://m365x809305.sharepoint.com/sites/Retail"
site.SetWebUrl(&webUrl) 
requestBody.SetSite(site)

result, err := graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").CustodiansById("ediscoveryCustodian-id").SiteSources().Post(context.Background(), requestBody, nil)


```