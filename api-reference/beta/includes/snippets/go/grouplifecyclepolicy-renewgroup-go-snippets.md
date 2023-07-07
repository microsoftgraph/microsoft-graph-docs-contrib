---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphgrouplifecyclepolicies "github.com/microsoftgraph/msgraph-beta-sdk-go/grouplifecyclepolicies"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphgrouplifecyclepolicies.NewRenewGroupPostRequestBody()
groupId := "ffffffff-ffff-ffff-ffff-ffffffffffff"
requestBody.SetGroupId(&groupId) 

result, err := graphClient.GroupLifecyclePolicies().RenewGroup().Post(context.Background(), requestBody, nil)


```