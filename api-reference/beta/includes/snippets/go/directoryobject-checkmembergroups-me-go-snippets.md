---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

requestBody := graphusers.NewItemCheckMemberGroupsPostRequestBody()
groupIds := []string {
	"fee2c45b-915a-4a64-b130-f4eb9e75525e",
	"4fe90ae7-065a-478b-9400-e0a0e1cbd540",
}
requestBody.SetGroupIds(groupIds)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
checkMemberGroups, err := graphClient.Me().CheckMemberGroups().PostAsCheckMemberGroupsPostResponse(context.Background(), requestBody, nil)


```