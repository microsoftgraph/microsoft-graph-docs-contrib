---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphgroups "github.com/microsoftgraph/msgraph-sdk-go/groups"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "return=minimal")

requestParameters := &graphgroups.GroupsDelta()RequestBuilderGetQueryParameters{
	Select: [] string {"displayName","description","mailNickname"},
}
configuration := &graphgroups.GroupsDelta()RequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

delta(), err := graphClient.Groups().Delta().Get(context.Background(), configuration)


```