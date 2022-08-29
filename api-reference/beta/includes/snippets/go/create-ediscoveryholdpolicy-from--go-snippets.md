---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEdiscoveryHoldPolicy()
displayname := "My legalHold with sources"
requestBody.SetDisplayname(&displayname) 
description := "Created from Graph API"
requestBody.SetDescription(&description) 
contentQuery := "Bazooka"
requestBody.SetContentQuery(&contentQuery) 
additionalData := map[string]interface{}{


 := graphmodels.New()
email := "SalesTeam@M365x809305.OnMicrosoft.com"
.SetEmail(&email) 

	"userSources@odata.bind" := []graphmodels.Objectable {
		,

	}


 := graphmodels.New()
site := graphmodels.New()
webUrl := "https://m365x809305.sharepoint.com/sites/Design-topsecret"
site.SetWebUrl(&webUrl) 
.SetSite(site)

	"siteSources@odata.bind" := []graphmodels.Objectable {
		,

	}
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").LegalHolds().Post(requestBody)


```