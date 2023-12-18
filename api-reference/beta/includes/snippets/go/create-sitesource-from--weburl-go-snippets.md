---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelssecurity.NewSiteSource()
site := graphmodels.NewSite()
webUrl := "https://m365x809305.sharepoint.com/sites/Retail"
site.SetWebUrl(&webUrl) 
requestBody.SetSite(site)

siteSources, err := graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").LegalHolds().ByEdiscoveryHoldPolicyId("ediscoveryHoldPolicy-id").SiteSources().Post(context.Background(), requestBody, nil)


```