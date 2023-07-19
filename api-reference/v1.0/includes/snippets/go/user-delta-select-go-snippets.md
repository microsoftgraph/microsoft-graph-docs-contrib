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


requestParameters := &graphusers.UsersDelta()RequestBuilderGetQueryParameters{
	Select: [] string {"displayName","jobTitle","mobilePhone"},
}
configuration := &graphusers.UsersDelta()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Users().Delta().Get(context.Background(), configuration)


```