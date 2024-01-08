---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdevices "github.com/microsoftgraph/msgraph-sdk-go/devices"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("ConsistencyLevel", "eventual")


requestSearch := "\"displayName:Android\""
requestCount := true

requestParameters := &graphdevices.DevicesRequestBuilderGetQueryParameters{
	Search: &requestSearch,
	Count: &requestCount,
}
configuration := &graphdevices.DevicesRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

devices, err := graphClient.Devices().Get(context.Background(), configuration)


```