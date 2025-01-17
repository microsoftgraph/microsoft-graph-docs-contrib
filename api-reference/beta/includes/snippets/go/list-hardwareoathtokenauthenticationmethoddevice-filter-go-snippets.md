---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdirectory "github.com/microsoftgraph/msgraph-beta-sdk-go/directory"
	  //other-imports
)


requestFilter := "status eq 'activated'"

requestParameters := &graphdirectory.AuthenticationMethodDevicesHardwareOathDevicesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphdirectory.AuthenticationMethodDevicesHardwareOathDevicesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
hardwareOathDevices, err := graphClient.Directory().AuthenticationMethodDevices().HardwareOathDevices().Get(context.Background(), configuration)


```