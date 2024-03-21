---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

deviceConfigurations, err := graphClient.DeviceManagement().DeviceConfigurations().Post(context.Background(), requestBody, nil)


```