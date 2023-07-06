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


requestParameters := &graphusers.ItemProfileRequestBuilderGetQueryParameters{
	Expand: [] string {"names($select=first,last)","skills($select=displayName)"},
}
configuration := &graphusers.ItemProfileRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Profile().Get(context.Background(), configuration)


```