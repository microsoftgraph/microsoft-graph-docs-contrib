---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//ediscovery"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCase()
displayName := "My Case 1 - Renamed"
requestBody.SetDisplayName(&displayName) 
description := "Updated description"
requestBody.SetDescription(&description) 
externalId := "Updated externalId"
requestBody.SetExternalId(&externalId) 

result, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").Patch(context.Background(), requestBody, nil)


```