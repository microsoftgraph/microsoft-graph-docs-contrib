---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewInferenceClassificationOverride()
classifyAs := "focused"
requestBody.SetClassifyAs(&classifyAs)
senderEmailAddress := msgraphsdk.NewEmailAddress()
requestBody.SetSenderEmailAddress(senderEmailAddress)
name := "Samantha Booth"
senderEmailAddress.SetName(&name)
address := "samanthab@adatum.onmicrosoft.com"
senderEmailAddress.SetAddress(&address)
options := &msgraphsdk.OverridesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().InferenceClassification().Overrides().Post(options);


```