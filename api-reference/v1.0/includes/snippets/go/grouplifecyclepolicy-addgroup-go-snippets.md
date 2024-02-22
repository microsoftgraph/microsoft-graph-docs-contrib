---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphgrouplifecyclepolicies "github.com/microsoftgraph/msgraph-sdk-go/grouplifecyclepolicies"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphgrouplifecyclepolicies.NewAddGroupPostRequestBody()
groupId := "ffffffff-ffff-ffff-ffff-ffffffffffff"
requestBody.SetGroupId(&groupId) 

addGroup, err := graphClient.GroupLifecyclePolicies().ByGroupLifecyclePolicyId("groupLifecyclePolicy-id").AddGroup().Post(context.Background(), requestBody, nil)


```