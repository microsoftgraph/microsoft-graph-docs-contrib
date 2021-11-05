---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewWebAccount()
webUrl := "https://github.com/innocenty.popov"
requestBody.SetWebUrl(&webUrl)
options := &msgraphsdk.WebAccountRequestBuilderPatchOptions{
	Body: requestBody,
}
webAccountId := "webAccount-id"
graphClient.Me().Profile().WebAccountsById(&webAccountId).Patch(options);


```