---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphusers.ItemContactsRequestBuilderGetQueryParameters{
	Select: [] string {"displayName","emailAddresses"},
}
configuration := &graphusers.ItemContactsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

contacts, err := graphClient.Me().Contacts().Get(context.Background(), configuration)


```