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

configuration := &graphusers.ItemTeamworkSectionsItemItemsItemMoveRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphusers.NewMovePostRequestBody()
targetSectionId := "c3d4e5f6-a7b8-9012-cdef-123456789012"
requestBody.SetTargetSectionId(&targetSectionId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
move, err := graphClient.Users().ByUserId("user-id").Teamwork().Sections().ByTeamworkSectionId("teamworkSection-id").Items().ByTeamworkSectionItemId("teamworkSectionItem-id").Move().Post(context.Background(), requestBody, configuration)


```