---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphcommunications "github.com/microsoftgraph/msgraph-sdk-go/communications"
	  //other-imports
)

requestBody := graphcommunications.NewGetPresencesByUserIdPostRequestBody()
ids := []string {
	"fa8bf3dc-eca7-46b7-bad1-db199b62afc3",
	"66825e03-7ef5-42da-9069-724602c31f6b",
}
requestBody.SetIds(ids)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
getPresencesByUserId, err := graphClient.Communications().GetPresencesByUserId().PostAsGetPresencesByUserIdPostResponse(context.Background(), requestBody, nil)


```