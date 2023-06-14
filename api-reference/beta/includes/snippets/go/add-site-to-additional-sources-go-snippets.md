---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsediscovery "github.com/microsoftgraph/msgraph-beta-sdk-go/models/ediscovery"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsediscovery.NewDataSource()
additionalData := map[string]interface{}{
site := graphmodels.New()
webUrl := "https://contoso.sharepoint.com/sites/SecretSite"
site.SetWebUrl(&webUrl) 
	requestBody.SetSite(site)
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").SourceCollections().BySourceCollectionId("sourceCollection-id").AdditionalSources().Post(context.Background(), requestBody, nil)


```