---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"authoringLanguages":  []Object {
	}
}
options := &msgraphsdk.RegionalAndLanguageSettingsRequestBuilderPutOptions{
	Body: requestBody,
}
graphClient.Me().Settings().RegionalAndLanguageSettings().Put(options)


```