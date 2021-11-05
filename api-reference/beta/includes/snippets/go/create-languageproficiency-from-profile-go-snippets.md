---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewLanguageProficiency()
displayName := "Norwegian Bokmål"
requestBody.SetDisplayName(&displayName)
tag := "nb-NO"
requestBody.SetTag(&tag)
spoken := "nativeOrBilingual"
requestBody.SetSpoken(&spoken)
written := "nativeOrBilingual"
requestBody.SetWritten(&written)
reading := "nativeOrBilingual"
requestBody.SetReading(&reading)
options := &msgraphsdk.LanguagesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().Profile().Languages().Post(options);


```