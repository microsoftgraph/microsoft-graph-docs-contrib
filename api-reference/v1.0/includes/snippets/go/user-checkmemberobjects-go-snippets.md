---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

requestBody := graphusers.NewItemCheckMemberObjectsPostRequestBody()
ids := []string {
	"80a963dd-84af-4eb8-b2a6-781e444d4fb0",
	"62e90394-69f5-4237-9190-012177145e10",
	"86a64f51-3a64-4cc6-a8c8-6b8f000c0f52",
	"ac38546e-ddf3-437a-ac5c-27a94cd7a0f1",
}
requestBody.SetIds(ids)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
checkMemberObjects, err := graphClient.Me().CheckMemberObjects().PostAsCheckMemberObjectsPostResponse(context.Background(), requestBody, nil)


```