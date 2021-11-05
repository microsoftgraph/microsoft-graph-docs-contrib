---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewEmailAuthenticationMethod()
emailAddress := "kim@contoso.com"
requestBody.SetEmailAddress(&emailAddress)
options := &msgraphsdk.EmailMethodsRequestBuilderPostOptions{
	Body: requestBody,
}
userId := "user-id"
result, err := graphClient.UsersById(&userId).Authentication().EmailMethods().Post(options);


```