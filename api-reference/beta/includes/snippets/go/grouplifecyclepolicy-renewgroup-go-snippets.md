---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphgrouplifecyclepolicies "github.com/microsoftgraph/msgraph-beta-sdk-go/grouplifecyclepolicies"
	  //other-imports
)

requestBody := graphgrouplifecyclepolicies.NewRenewGroupPostRequestBody()
groupId := "ffffffff-ffff-ffff-ffff-ffffffffffff"
requestBody.SetGroupId(&groupId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
renewGroup, err := graphClient.GroupLifecyclePolicies().RenewGroup().PostAsRenewGroupPostResponse(context.Background(), requestBody, nil)


```