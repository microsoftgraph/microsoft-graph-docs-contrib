---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphgroups "github.com/microsoftgraph/msgraph-beta-sdk-go/groups"
	  //other-imports
)

requestBody := graphgroups.NewEvaluateDynamicMembershipPostRequestBody()
memberId := "319b41e8-d9e4-42f8-bdc9-741113f48b33"
requestBody.SetMemberId(&memberId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
evaluateDynamicMembership, err := graphClient.Groups().ByGroupId("group-id").EvaluateDynamicMembership().Post(context.Background(), requestBody, nil)


```