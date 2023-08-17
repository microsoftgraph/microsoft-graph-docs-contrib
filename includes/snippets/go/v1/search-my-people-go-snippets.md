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



requestSearch := "\"Irene McGowen\""

requestParameters := &graphusers.ItemPeopleRequestBuilderGetQueryParameters{
	Search: &requestSearch,
}
configuration := &graphusers.ItemPeopleRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

people, err := graphClient.Me().People().Get(context.Background(), configuration)


```