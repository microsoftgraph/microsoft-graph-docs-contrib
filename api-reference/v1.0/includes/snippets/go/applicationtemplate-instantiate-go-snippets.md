---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewDisplayNameRequestBody()
displayName := "My custom name"
requestBody.SetDisplayName(&displayName)
options := &msgraphsdk.InstantiateRequestBuilderPostOptions{
	Body: requestBody,
}
applicationTemplateId := "applicationTemplate-id"
result, err := graphClient.ApplicationTemplatesById(&applicationTemplateId).Instantiate(applicationTemplate-id).Post(options)


```