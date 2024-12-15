---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  //other-imports
)

requestParameters := &graphdevicemanagement.VirtualEndpointExternalPartnerSettingsRequestBuilderGetQueryParameters{
	Select: [] string {"id","partnerId","enableConnection"},
}
configuration := &graphdevicemanagement.VirtualEndpointExternalPartnerSettingsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
externalPartnerSettings, err := graphClient.DeviceManagement().VirtualEndpoint().ExternalPartnerSettings().Get(context.Background(), configuration)


```