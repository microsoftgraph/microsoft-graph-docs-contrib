---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewGroup()
description := "Self help community for golf"
requestBody.SetDescription(&description)
displayName := "Golf Assist"
requestBody.SetDisplayName(&displayName)
requestBody.SetGroupTypes( []String {
	"Unified",
}
mailEnabled := true
requestBody.SetMailEnabled(&mailEnabled)
mailNickname := "golfassist"
requestBody.SetMailNickname(&mailNickname)
securityEnabled := false
requestBody.SetSecurityEnabled(&securityEnabled)
options := &msgraphsdk.GroupsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Groups().Post(options)


```