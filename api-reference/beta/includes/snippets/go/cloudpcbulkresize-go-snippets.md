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


requestBody := graphdevicemanagement.NewBulkResizePostRequestBody()
cloudPcIds := []string {
	"30d0e128-de93-41dc-89ec-33d84bb662a0",
	"7c82a3e3-9459-44e4-94d9-b92f93bf78dd",
}
requestBody.SetCloudPcIds(cloudPcIds)
targetServicePlanId := "662009bc-7732-4f6f-8726-25883518b33e"
requestBody.SetTargetServicePlanId(&targetServicePlanId) 

result, err := graphClient.DeviceManagement().VirtualEndpoint().CloudPCs().BulkResize().Post(context.Background(), requestBody, nil)


```