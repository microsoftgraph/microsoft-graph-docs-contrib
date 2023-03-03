---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewDataSource()
additionalData := map[string]interface{}{
site := graphmodels.New()
webUrl := "https://m365x809305.sharepoint.com/sites/Design-topsecret"
site.SetWebUrl(&webUrl) 
	requestBody.SetSite(site)
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").SearchesById("ediscoverySearch-id").AdditionalSources().Post(context.Background(), requestBody, nil)


```