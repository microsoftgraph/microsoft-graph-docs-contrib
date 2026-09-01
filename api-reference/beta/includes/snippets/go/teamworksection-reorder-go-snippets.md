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

configuration := &graphusers.ItemTeamworkSectionsReorderRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphusers.NewReorderPostRequestBody()
sectionsOrder := []string {
	"ce274158-f4f5-4ba7-bd18-0b2204dc1691~10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f~QuickViews",
	"a1b2c3d4-e5f6-7890-abcd-ef1234567890",
	"b2c3d4e5-f6a7-8901-bcde-f12345678901",
}
requestBody.SetSectionsOrder(sectionsOrder)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
reorder, err := graphClient.Users().ByUserId("user-id").Teamwork().Sections().Reorder().PostAsReorderPostResponse(context.Background(), requestBody, configuration)


```