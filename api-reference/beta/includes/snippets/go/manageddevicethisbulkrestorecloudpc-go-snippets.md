---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdevicemanagement.NewBulkRestoreCloudPcPostRequestBody()
managedDeviceIds := []string {
	"30d0e128-de93-41dc-89ec-33d84bb662a0",
	"7c82a3e3-9459-44e4-94d9-b92f93bf78dd",
}
requestBody.SetManagedDeviceIds(managedDeviceIds)
restorePointDateTime , err := time.Parse(time.RFC3339, "2021-09-23T04:00:00.0000000")
requestBody.SetRestorePointDateTime(&restorePointDateTime) 
timeRange := graphmodels.BEFORE_RESTORETIMERANGE 
requestBody.SetTimeRange(&timeRange) 

result, err := graphClient.DeviceManagement().ManagedDevices().BulkRestoreCloudPc().Post(context.Background(), requestBody, nil)


```