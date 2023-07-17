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

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelssecurity.NewEdiscoveryReviewSetQuery()
displayName := "My Query 1"
requestBody.SetDisplayName(&displayName) 
contentQuery := "(Author=\"edison\")"
requestBody.SetContentQuery(&contentQuery) 

result, err := graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").ReviewSets().ByReviewSetId("ediscoveryReviewSet-id").Queries().Post(context.Background(), requestBody, nil)


```