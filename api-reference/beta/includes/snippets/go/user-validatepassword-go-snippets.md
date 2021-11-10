---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
password := "1234567890"
requestBody.SetPassword(&password)
options := &msgraphsdk.ValidatePasswordRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Users().ValidatePassword().Post(options);


```