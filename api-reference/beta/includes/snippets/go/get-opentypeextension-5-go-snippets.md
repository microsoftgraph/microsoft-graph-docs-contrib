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



requestFilter := "Extensions/any(f:f/id eq 'Com.Contoso.Referral')"

requestParameters := &graphusers.ItemMessagesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Expand: [] string {"Extensions($filter=id eq 'Com.Contoso.Referral')"},
}
configuration := &graphusers.ItemMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

messages, err := graphClient.Me().Messages().Get(context.Background(), configuration)


```