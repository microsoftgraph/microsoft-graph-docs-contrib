---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("If-Match", "\"1742515200\"")

configuration := &graphusers.ItemTeamworkSectionsItemItemsReorderRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphusers.NewReorderPostRequestBody()
itemsOrder := []string {
	"19:meeting_MTUxMjg0OGItZTY3MC00NTkyLTg1NzMtZTVkZTcyZDU5ZGVi@thread.v2",
	"19:978e3806-38a4-4104-a07f-57abfa8cdf9a_bdf9c93b-12ea-4e8f-8383-d0ca66d5ff48@unq.gbl.spaces",
	"19:94961b6eacc04e2392e34709c66cb610@thread.v2",
}
requestBody.SetItemsOrder(itemsOrder)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
reorder, err := graphClient.Users().ByUserId("user-id").Teamwork().Sections().ByTeamworkSectionId("teamworkSection-id").Items().Reorder().PostAsReorderPostResponse(context.Background(), requestBody, configuration)


```