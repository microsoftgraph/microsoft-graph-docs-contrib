---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/groups"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.GroupItemRequestBuilderGetQueryParameters{
	Select: [] string {"allowExternalSenders","autoSubscribeNewMembers","isSubscribedByMail","unseenCount"},
}
configuration := &graphconfig.GroupItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Groups().ByGroupId("group-id").Get(context.Background(), configuration)


```