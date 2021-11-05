---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewContact()
parentFolderId := "parentFolderId-value"
requestBody.SetParentFolderId(&parentFolderId)
birthday, err := time.Parse(time.RFC3339, "datetime-value")
requestBody.SetBirthday(&birthday)
fileAs := "fileAs-value"
requestBody.SetFileAs(&fileAs)
displayName := "displayName-value"
requestBody.SetDisplayName(&displayName)
givenName := "givenName-value"
requestBody.SetGivenName(&givenName)
initials := "initials-value"
requestBody.SetInitials(&initials)
options := &msgraphsdk.ContactsRequestBuilderPostOptions{
	Body: requestBody,
}
contactFolderId := "contactFolder-id"
result, err := graphClient.Me().ContactFoldersById(&contactFolderId).Contacts().Post(options);


```