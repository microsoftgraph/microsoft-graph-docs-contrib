---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdevices "github.com/microsoftgraph/msgraph-sdk-go/devices"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("ConsistencyLevel", "eventual")


requestFilter := "extensionAttributes/extensionAttribute1 eq 'BYOD-Device'"
requestCount := true

requestParameters := &graphdevices.DevicesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Count: &requestCount,
}
configuration := &graphdevices.DevicesRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
devices, err := graphClient.Devices().Get(context.Background(), configuration)


```