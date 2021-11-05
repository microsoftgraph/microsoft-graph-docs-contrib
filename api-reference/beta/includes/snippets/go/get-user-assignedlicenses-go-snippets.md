---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.UsersRequestBuilderGetQueryParameters{
	Select: "id,mail,assignedLicenses",
	Filter: "assignedLicenses/any",
}
options := &msgraphsdk.UsersRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.Users().Get(options);


```