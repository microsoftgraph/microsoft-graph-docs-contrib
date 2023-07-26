---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewItemCheckMemberGroupsPostRequestBody()
groupIds := []string {
	"fee2c45b-915a-4a64b130f4eb9e75525e",
	"4fe90ae065a-478b9400e0a0e1cbd540",
}
requestBody.SetGroupIds(groupIds)

result, err := graphClient.Me().CheckMemberGroups().Post(context.Background(), requestBody, nil)


```