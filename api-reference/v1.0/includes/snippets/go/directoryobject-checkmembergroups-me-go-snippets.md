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

requestBody := graphusers.NewItemCheckMemberGroupsPostRequestBody()
groupIds := []string {
	"fee2c45b-915a-4a64b130f4eb9e75525e",
	"4fe90ae065a-478b9400e0a0e1cbd540",
}
requestBody.SetGroupIds(groupIds)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
checkMemberGroups, err := graphClient.Me().CheckMemberGroups().PostAsCheckMemberGroupsPostResponse(context.Background(), requestBody, nil)


```