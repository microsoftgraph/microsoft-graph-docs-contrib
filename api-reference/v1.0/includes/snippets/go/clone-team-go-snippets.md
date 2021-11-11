---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
displayName := "Library Assist"
requestBody.SetDisplayName(&displayName)
description := "Self help community for library"
requestBody.SetDescription(&description)
mailNickname := "libassist"
requestBody.SetMailNickname(&mailNickname)
partsToClone := "apps,tabs,settings,channels,members"
requestBody.SetPartsToClone(&partsToClone)
visibility := "public"
requestBody.SetVisibility(&visibility)
options := &msgraphsdk.CloneRequestBuilderPostOptions{
	Body: requestBody,
}
teamId := "team-id"
graphClient.TeamsById(&teamId).Clone().Post(options)


```