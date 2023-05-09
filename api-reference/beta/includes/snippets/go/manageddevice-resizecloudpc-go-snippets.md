---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/DeviceManagement/ManagedDevices/Item/ResizeCloudPc"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewResizeCloudPcPostRequestBody()
targetServicePlanId := "30d0e128-de93-41dc-89ec-33d84bb662a0"
requestBody.SetTargetServicePlanId(&targetServicePlanId) 

graphClient.DeviceManagement().ManagedDevices().ByManagedDeviceId("managedDevice-id").ResizeCloudPc().Post(context.Background(), requestBody, nil)


```