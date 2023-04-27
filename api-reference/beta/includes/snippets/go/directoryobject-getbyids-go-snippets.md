---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/DirectoryObjects/GetByIds"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewGetByIdsPostRequestBody()
ids := []string {
	"84b80893-8749-40a3-97b7-68513b600544",
	"5d6059b6-368d-45f8-91e1-8e07d485f1d0",
	"0b944de3-e0fc-4774-a49a-b135213725ef",
	"b75a5ab2-fe55-4463-bd31-d21ad555c6e0",

}
requestBody.SetIds(ids)
types := []string {
	"user",
	"group",
	"device",

}
requestBody.SetTypes(types)

result, err := graphClient.DirectoryObjects().GetByIds().Post(context.Background(), requestBody, nil)


```