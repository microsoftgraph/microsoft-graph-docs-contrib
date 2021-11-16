---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewProgram()
displayName := "testprogram3"
requestBody.SetDisplayName(&displayName)
description := "test description"
requestBody.SetDescription(&description)
options := &msgraphsdk.ProgramsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Programs().Post(options)


```