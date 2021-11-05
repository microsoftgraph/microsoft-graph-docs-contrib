---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewItemPhone()
displayName := "Car Phone"
requestBody.SetDisplayName(&displayName)
number := "+7 499 342 22 13"
requestBody.SetNumber(&number)
options := &msgraphsdk.PhonesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().Profile().Phones().Post(options);


```