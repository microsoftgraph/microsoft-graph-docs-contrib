---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewWebAccount()
description := "My Github contributions!"
requestBody.SetDescription(&description)
userId := "innocenty.popov"
requestBody.SetUserId(&userId)
service := msgraphsdk.NewServiceInformation()
requestBody.SetService(service)
name := "GitHub"
service.SetName(&name)
webUrl := "https://github.com"
service.SetWebUrl(&webUrl)
options := &msgraphsdk.WebAccountsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().Profile().WebAccounts().Post(options);


```