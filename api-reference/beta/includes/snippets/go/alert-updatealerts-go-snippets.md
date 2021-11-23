---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetValue( []Alert {
	msgraphsdk.NewAlert(),
	SetAdditionalData(map[string]interface{}{
		"assignedTo": "String",
		"closedDateTime": "String (timestamp)",
		"comments":  []String {
			"String",
		}
		"id": "String (identifier)",
		"tags":  []String {
			"String",
		}
	}
}
options := &msgraphsdk.UpdateAlertsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Security().Alerts().UpdateAlerts().Post(options)


```