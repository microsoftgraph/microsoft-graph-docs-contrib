---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewWebAccount()
description := "My Github contributions!"
requestBody.SetDescription(&description) 
userId := "innocenty.popov"
requestBody.SetUserId(&userId) 
service := graphmodels.NewServiceInformation()
name := "GitHub"
service.SetName(&name) 
webUrl := "https://github.com"
service.SetWebUrl(&webUrl) 
requestBody.SetService(service)

result, err := graphClient.Me().Profile().WebAccounts().Post(requestBody)


```