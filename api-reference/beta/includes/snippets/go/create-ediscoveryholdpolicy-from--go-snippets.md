---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEdiscoveryHoldPolicy()
displayname := "My legalHold with sources"
requestBody.SetDisplayname(&displayname) 
description := "Created from Graph API"
requestBody.SetDescription(&description) 
additionalData := map[string]interface{}{


 := graphmodels.New()
email := "SalesTeam@M365x809305.OnMicrosoft.com"
.SetEmail(&email) 

	odataBind := []graphmodels.Objectable {
		,

	}


 := graphmodels.New()
site := graphmodels.New()
webUrl := "https://m365x809305.sharepoint.com/sites/Design-topsecret"
site.SetWebUrl(&webUrl) 
.SetSite(site)

	odataBind := []graphmodels.Objectable {
		,

	}
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").LegalHolds().Post(context.Background(), requestBody, nil)


```