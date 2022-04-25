---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewSecurityEnabledOnlyRequestBody()
securityEnabledOnly := true
requestBody.SetSecurityEnabledOnly(&securityEnabledOnly)
options := &msgraphsdk.GetMemberObjectsRequestBuilderPostOptions{
	Body: requestBody,
}
directoryObjectId := "directoryObject-id"
result, err := graphClient.DirectoryObjectsById(&directoryObjectId).GetMemberObjects(directoryObject-id).Post(options)


```