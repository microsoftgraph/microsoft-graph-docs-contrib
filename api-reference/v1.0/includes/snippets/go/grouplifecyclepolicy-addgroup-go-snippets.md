---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphgrouplifecyclepolicies "github.com/microsoftgraph/msgraph-sdk-go/grouplifecyclepolicies"
	  //other-imports
)

requestBody := graphgrouplifecyclepolicies.NewAddGroupPostRequestBody()
groupId := "ffffffff-ffff-ffff-ffff-ffffffffffff"
requestBody.SetGroupId(&groupId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
addGroup, err := graphClient.GroupLifecyclePolicies().ByGroupLifecyclePolicyId("groupLifecyclePolicy-id").AddGroup().PostAsAddGroupPostResponse(context.Background(), requestBody, nil)


```