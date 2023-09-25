---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphgroups "github.com/microsoftgraph/msgraph-sdk-go/groups"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphgroups.GroupItemRequestBuilderGetQueryParameters{
	Select: [] string {"allowExternalSenders","autoSubscribeNewMembers","isSubscribedByMail","unseenCount"},
}
configuration := &graphgroups.GroupItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

groups, err := graphClient.Groups().ByGroupId("group-id").Get(context.Background(), configuration)


```