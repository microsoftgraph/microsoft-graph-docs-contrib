---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.DeviceManagementVirtualEndpointUserSettingItemRequestBuilderGetQueryParameters{
	Expand: [] string {"assignments"},
}
configuration := &graphconfig.DeviceManagementVirtualEndpointUserSettingItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.DeviceManagement().VirtualEndpoint().UserSettings().ByUserSettingId("cloudPcUserSetting-id").Get(context.Background(), configuration)


```