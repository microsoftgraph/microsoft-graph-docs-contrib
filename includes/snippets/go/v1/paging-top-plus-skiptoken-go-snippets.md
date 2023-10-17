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



requestTop := int32(5)
requestSkiptoken := "skiptoken=RFNwdAIAAQAAAD8...AAAAAAAA"

requestParameters := &graphusers.UsersRequestBuilderGetQueryParameters{
	Top: &requestTop,
	Skiptoken: &requestSkiptoken,
}
configuration := &graphusers.UsersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

users, err := graphClient.Users().Get(context.Background(), configuration)


```