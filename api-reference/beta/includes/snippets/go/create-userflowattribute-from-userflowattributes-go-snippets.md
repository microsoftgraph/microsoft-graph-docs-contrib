---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewIdentityUserFlowAttribute()
displayName := "Hobby"
requestBody.SetDisplayName(&displayName)
description := "Your hobby"
requestBody.SetDescription(&description)
dataType := "string"
requestBody.SetDataType(&dataType)
options := &msgraphsdk.UserFlowAttributesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Identity().UserFlowAttributes().Post(options)


```