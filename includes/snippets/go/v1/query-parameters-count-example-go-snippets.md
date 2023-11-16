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



requestCount := true

requestParameters := &graphusers.ItemContactsRequestBuilderGetQueryParameters{
	Count: &requestCount,
}
configuration := &graphusers.ItemContactsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

contacts, err := graphClient.Me().Contacts().Get(context.Background(), configuration)


```