---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("ConsistencyLevel", "eventual")


requestFilter := "endswith(mail,'a@contoso.com')"
requestCount := true

requestParameters := &graphusers.UsersRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Orderby: [] string {"userPrincipalName"},
	Count: &requestCount,
}
configuration := &graphusers.UsersRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

users, err := graphClient.Users().Get(context.Background(), configuration)


```