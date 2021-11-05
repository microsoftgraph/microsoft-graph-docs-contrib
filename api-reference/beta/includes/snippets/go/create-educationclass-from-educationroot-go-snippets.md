---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewEducationClass()
description := "Health Level 1"
requestBody.SetDescription(&description)
classCode := "Health 501"
requestBody.SetClassCode(&classCode)
displayName := "Health 1"
requestBody.SetDisplayName(&displayName)
externalId := "11019"
requestBody.SetExternalId(&externalId)
externalName := "Health Level 1"
requestBody.SetExternalName(&externalName)
externalSource := "sis"
requestBody.SetExternalSource(&externalSource)
mailNickname := "fineartschool.net"
requestBody.SetMailNickname(&mailNickname)
options := &msgraphsdk.ClassesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Education().Classes().Post(options);


```