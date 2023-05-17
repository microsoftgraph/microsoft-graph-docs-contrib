---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.DeviceManagementVirtualEndpointExternalPartnerSettingsRequestBuilderGetQueryParameters{
	Select: [] string {"id","partnerId","enableConnection"},
}
configuration := &graphconfig.DeviceManagementVirtualEndpointExternalPartnerSettingsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.DeviceManagement().VirtualEndpoint().ExternalPartnerSettings().Get(context.Background(), configuration)


```