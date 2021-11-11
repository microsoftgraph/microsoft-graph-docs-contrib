---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.ContactRequestBuilderGetQueryParameters{
	Select: "displayName",
}
headers := map[string]string{
	"Prefer": "odata.maxpagesize=2"
}
options := &msgraphsdk.ContactRequestBuilderGetOptions{
	Q: requestParameters,
	H: headers,
}
contactFolderId := "contactFolder-id"
contactId := "contact-id"
result, err := graphClient.Me().ContactFoldersById(&contactFolderId).ContactsById(&contactId).Get(options)


```