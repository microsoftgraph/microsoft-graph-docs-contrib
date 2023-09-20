---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphdevicemanagement.DeviceManagementVirtualEndpointUserSettingItemRequestBuilderGetQueryParameters{
	Expand: [] string {"assignments"},
}
configuration := &graphdevicemanagement.DeviceManagementVirtualEndpointUserSettingItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

userSettings, err := graphClient.DeviceManagement().VirtualEndpoint().UserSettings().ByCloudPcUserSettingId("cloudPcUserSetting-id").Get(context.Background(), configuration)


```