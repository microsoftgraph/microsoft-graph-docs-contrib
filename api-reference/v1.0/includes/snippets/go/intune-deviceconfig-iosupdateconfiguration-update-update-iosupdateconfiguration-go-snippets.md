---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewDeviceConfiguration()
description := "Description value"
requestBody.SetDescription(&description) 
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
version := int32(7)
requestBody.SetVersion(&version) 
activeHoursStart := 12:00:05.5020000
requestBody.SetActiveHoursStart(&activeHoursStart) 
activeHoursEnd := 11:59:00.8990000
requestBody.SetActiveHoursEnd(&activeHoursEnd) 
scheduledInstallDays := []graphmodels.DayOfWeekable {
	dayOfWeek := graphmodels.MONDAY_DAYOFWEEK 
	requestBody.SetDayOfWeek(&dayOfWeek)
}
requestBody.SetScheduledInstallDays(scheduledInstallDays)
utcTimeOffsetInMinutes := int32(6)
requestBody.SetUtcTimeOffsetInMinutes(&utcTimeOffsetInMinutes) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
deviceConfigurations, err := graphClient.DeviceManagement().DeviceConfigurations().ByDeviceConfigurationId("deviceConfiguration-id").Patch(context.Background(), requestBody, nil)


```