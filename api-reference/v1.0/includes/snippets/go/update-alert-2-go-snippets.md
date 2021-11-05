---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewAlert()
assignedTo := "String"
requestBody.SetAssignedTo(&assignedTo)
closedDateTime, err := time.Parse(time.RFC3339, "String (timestamp)")
requestBody.SetClosedDateTime(&closedDateTime)
requestBody.SetComments( []String {
	"String",
}
feedback := "@odata.type: microsoft.graph.alertFeedback"
requestBody.SetFeedback(&feedback)
status := "@odata.type: microsoft.graph.alertStatus"
requestBody.SetStatus(&status)
requestBody.SetTags( []String {
	"String",
}
vendorInformation := msgraphsdk.NewSecurityVendorInformation()
requestBody.SetVendorInformation(vendorInformation)
provider := "String"
vendorInformation.SetProvider(&provider)
vendor := "String"
vendorInformation.SetVendor(&vendor)
headers := map[string]string{
	"Prefer": "return=representation"
}
options := &msgraphsdk.AlertRequestBuilderPatchOptions{
	Body: requestBody,
	H: headers,
}
alertId := "alert-id"
graphClient.Security().AlertsById(&alertId).Patch(options);


```