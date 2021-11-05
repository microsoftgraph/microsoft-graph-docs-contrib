---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.UserRequestBuilderGetQueryParameters{
	Select: "displayName,jobTitle,mobilePhone",
}
headers := map[string]string{
	"Prefer": "return=minimal"
}
options := &msgraphsdk.UserRequestBuilderGetOptions{
	Q: requestParameters,
	H: headers,
}
userId := "user-id"
result, err := graphClient.UsersById(&userId).Get(options);


```