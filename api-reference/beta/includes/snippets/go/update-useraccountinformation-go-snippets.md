---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewUserAccountInformation()
countryCode := "NO"
requestBody.SetCountryCode(&countryCode)
options := &msgraphsdk.UserAccountInformationRequestBuilderPatchOptions{
	Body: requestBody,
}
userAccountInformationId := "userAccountInformation-id"
graphClient.Me().Profile().AccountById(&userAccountInformationId).Patch(options)


```