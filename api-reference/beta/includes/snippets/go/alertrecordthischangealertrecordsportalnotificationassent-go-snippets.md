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

requestBody := graphdevicemanagement.NewChangeAlertRecordsPortalNotificationAsSentPostRequestBody()
alertRecordIds := []string {
	"1d2b92e3-539a-481f-b38a-c2c050b422ad",
	"4bf624c4-a801-4631-989c-7f1a3a0d1d83",
}
requestBody.SetAlertRecordIds(alertRecordIds)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceManagement().Monitoring().AlertRecords().MicrosoftGraphDeviceManagementChangeAlertRecordsPortalNotificationAsSent().Post(context.Background(), requestBody, nil)


```