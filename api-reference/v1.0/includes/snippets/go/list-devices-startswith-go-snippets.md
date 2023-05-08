---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/devices"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("ConsistencyLevel", "eventual")


requestFilter := "startswith(displayName,%20'a')"
requestCount := true
requestTop := int32(1)

requestParameters := &graphconfig.DevicesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Count: &requestCount,
	Top: &requestTop,
	Orderby: [] string {"displayName"},
}
configuration := &graphconfig.DevicesRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Devices().Get(context.Background(), configuration)


```