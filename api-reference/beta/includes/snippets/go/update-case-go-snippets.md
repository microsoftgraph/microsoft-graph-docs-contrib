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


requestBody := graphmodelsediscovery.NewCase()
displayName := "My Case 1 - Renamed"
requestBody.SetDisplayName(&displayName) 
description := "Updated description"
requestBody.SetDescription(&description) 
externalId := "Updated externalId"
requestBody.SetExternalId(&externalId) 

cases, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").Patch(context.Background(), requestBody, nil)


```