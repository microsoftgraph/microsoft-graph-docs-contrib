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


requestBody := graphdevicemanagement.NewChangeAlertRecordsPortalNotificationAsSentPostRequestBody()
alertRecordIds := []string {
	"1d2b92e3-539a-481f-b38a-c2c050b422ad",
	"4bf624c4-a801-4631-989c-7f1a3a0d1d83",
}
requestBody.SetAlertRecordIds(alertRecordIds)

graphClient.DeviceManagement().Monitoring().AlertRecords().MicrosoftGraphDeviceManagementChangeAlertRecordsPortalNotificationAsSent().Post(context.Background(), requestBody, nil)


```