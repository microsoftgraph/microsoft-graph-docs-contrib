---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.OrgContactRequestBuilderGetQueryParameters{
	Select: "displayName,jobTitle,mail",
}
options := &msgraphsdk.OrgContactRequestBuilderGetOptions{
	Q: requestParameters,
}
orgContactId := "orgContact-id"
result, err := graphClient.ContactsById(&orgContactId).Get(options)


```