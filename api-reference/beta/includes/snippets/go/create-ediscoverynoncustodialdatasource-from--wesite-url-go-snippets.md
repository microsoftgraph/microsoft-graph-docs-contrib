---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelssecurity.NewEdiscoveryNoncustodialDataSource()
dataSource := graphmodelssecurity.NewDataSource()
additionalData := map[string]interface{}{
site := graphmodels.New()
webUrl := "https://m365x809305.sharepoint.com/sites/Design-topsecret"
site.SetWebUrl(&webUrl) 
	dataSource.SetSite(site)
}
dataSource.SetAdditionalData(additionalData)
requestBody.SetDataSource(dataSource)

result, err := graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").NoncustodialDataSources().Post(context.Background(), requestBody, nil)


```