---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewEdiscoveryNoncustodialDataSource()
dataSource := graphmodels.NewDataSource()
additionalData := map[string]interface{}{
site := graphmodels.New()
webUrl := "https://m365x809305.sharepoint.com/sites/Design-topsecret"
site.SetWebUrl(&webUrl) 
	dataSource.SetSite(site)
}
dataSource.SetAdditionalData(additionalData)
requestBody.SetDataSource(dataSource)

result, err := graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").NoncustodialDataSources().Post(context.Background(), requestBody, nil)


```