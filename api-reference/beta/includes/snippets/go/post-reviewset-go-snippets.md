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


requestBody := graphmodelsediscovery.NewReviewSet()
displayName := "My Reviewset 3"
requestBody.SetDisplayName(&displayName) 

reviewSets, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").ReviewSets().Post(context.Background(), requestBody, nil)


```