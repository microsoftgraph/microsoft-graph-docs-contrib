---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-sdk-go/devicemanagement"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdevicemanagement.NewGetDeviceManagementIntentSettingsReportPostRequestBody()
name := "Name value"
requestBody.SetName(&name) 
select := []string {
	"Select value",
}
requestBody.SetSelect(select)
search := "Search value"
requestBody.SetSearch(&search) 
groupBy := []string {
	"Group By value",
}
requestBody.SetGroupBy(groupBy)
orderBy := []string {
	"Order By value",
}
requestBody.SetOrderBy(orderBy)
skip := int32(4)
requestBody.SetSkip(&skip) 
top := int32(3)
requestBody.SetTop(&top) 
sessionId := "Session Id value"
requestBody.SetSessionId(&sessionId) 
filter := "Filter value"
requestBody.SetFilter(&filter) 

graphClient.DeviceManagement().Reports().GetDeviceManagementIntentSettingsReport().Post(context.Background(), requestBody, nil)


```