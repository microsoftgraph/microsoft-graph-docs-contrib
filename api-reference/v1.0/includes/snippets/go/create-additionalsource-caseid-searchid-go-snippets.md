---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-sdk-go/models/security"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelssecurity.NewDataSource()
additionalData := map[string]interface{}{
site := graphmodels.New()
webUrl := "https://contoso.sharepoint.com/sites/SecretSite"
site.SetWebUrl(&webUrl) 
	requestBody.SetSite(site)
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").Searches().BySearcheId("ediscoverySearch-id").AdditionalSources().Post(context.Background(), requestBody, nil)


```