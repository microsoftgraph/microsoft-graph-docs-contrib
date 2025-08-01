---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevices "github.com/microsoftgraph/msgraph-beta-sdk-go/devices"
	  //other-imports
)


requestFilter := "state in ('active', 'suspended') and serviceIdentifier in ('ABCD')"

requestParameters := &graphdevices.ItemUsageRightsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphdevices.ItemUsageRightsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
usageRights, err := graphClient.Devices().ByDeviceId("device-id").UsageRights().Get(context.Background(), configuration)


```