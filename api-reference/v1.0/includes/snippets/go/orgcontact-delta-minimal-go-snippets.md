---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.OrgContactRequestBuilderGetQueryParameters{
	Select: "displayName,jobTitle,mail",
}
headers := map[string]string{
	"Prefer": "return=minimal"
}
options := &msgraphsdk.OrgContactRequestBuilderGetOptions{
	Q: requestParameters,
	H: headers,
}
orgContactId := "orgContact-id"
result, err := graphClient.ContactsById(&orgContactId).Get(options)


```