---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdirectoryobjects "github.com/microsoftgraph/msgraph-sdk-go/directoryobjects"
	  //other-imports
)

requestBody := graphdirectoryobjects.NewGetByIdsPostRequestBody()
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
getByIds, err := graphClient.DirectoryObjects().GetByIds().PostAsGetByIdsPostResponse(context.Background(), requestBody, nil)


```