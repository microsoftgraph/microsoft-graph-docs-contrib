---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewItemCheckMemberGroupsPostRequestBody()
groupIds := []string {
	"fee2c45b-915a-4a64-b130-f4eb9e75525e",
	"4fe90ae7-065a-478b-9400-e0a0e1cbd540",
}
requestBody.SetGroupIds(groupIds)

checkMemberGroups, err := graphClient.Me().CheckMemberGroups().Post(context.Background(), requestBody, nil)


```