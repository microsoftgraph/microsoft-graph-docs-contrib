---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewExtensionProperty()
name := "jobGroupTracker"
requestBody.SetName(&name) 
dataType := "String"
requestBody.SetDataType(&dataType) 
targetObjects := []string {
	"User",

}
requestBody.SetTargetObjects(targetObjects)

result, err := graphClient.ApplicationsById("application-id").ExtensionProperties().Post(context.Background(), requestBody, nil)


```