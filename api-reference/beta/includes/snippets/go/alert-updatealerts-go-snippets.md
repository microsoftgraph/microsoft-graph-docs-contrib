---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUpdateAlertsPostRequestBody()


 := graphmodels.New()
additionalData := map[string]interface{}{
	"assignedTo" : "String", 
	"closedDateTime" : "String (timestamp)", 
	comments := []String {
		"String",

	}
feedback := graphmodels.New()
"@odata.type" := "microsoft.graph.alertFeedback"
feedback.Set"@odata.type"(&"@odata.type") 
	.SetFeedback(feedback)
	"id" : "String (identifier)", 
status := graphmodels.New()
"@odata.type" := "microsoft.graph.alertStatus"
status.Set"@odata.type"(&"@odata.type") 
	.SetStatus(status)
	tags := []String {
		"String",

	}
vendorInformation := graphmodels.New()
provider := "String"
vendorInformation.SetProvider(&provider) 
vendor := "String"
vendorInformation.SetVendor(&vendor) 
	.SetVendorInformation(vendorInformation)
}
.SetAdditionalData(additionalData)

value := []graphmodels.Objectable {
	,

}
requestBody.SetValue(value)

result, err := graphClient.Security().Alerts().UpdateAlerts().Post(requestBody)


```