---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewExtensionProperty()
name := "jobGroup"
requestBody.SetName(&name)
dataType := "String"
requestBody.SetDataType(&dataType)
requestBody.SetTargetObjects( []String {
	"User",
}
options := &msgraphsdk.ExtensionPropertiesRequestBuilderPostOptions{
	Body: requestBody,
}
applicationId := "application-id"
result, err := graphClient.ApplicationsById(&applicationId).ExtensionProperties().Post(options)


```