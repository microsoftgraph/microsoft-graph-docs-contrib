---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.UserRequestBuilderGetQueryParameters{
	Select: "displayName,jobTitle,mobilePhone",
}
options := &msgraphsdk.UserRequestBuilderGetOptions{
	Q: requestParameters,
}
userId := "user-id"
result, err := graphClient.UsersById(&userId).Get(options)


```