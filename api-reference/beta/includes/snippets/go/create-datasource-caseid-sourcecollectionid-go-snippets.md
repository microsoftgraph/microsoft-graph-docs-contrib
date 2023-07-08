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

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsediscovery.NewDataSource()
email := "badguy@contoso.com"
requestBody.SetEmail(&email) 

result, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").SourceCollections().BySourceCollectionId("sourceCollection-id").AdditionalSources().Post(context.Background(), requestBody, nil)


```