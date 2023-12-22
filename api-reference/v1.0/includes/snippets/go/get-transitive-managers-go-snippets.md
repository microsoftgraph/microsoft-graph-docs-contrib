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

requestParameters := &graphusers.MeRequestBuilderGetQueryParameters{
	Expand: [] string {"manager($levels=max;$select=id,displayName)"},
	Select: [] string {"id","displayName"},
}
configuration := &graphusers.MeRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

me, err := graphClient.Me().Get(context.Background(), configuration)


```