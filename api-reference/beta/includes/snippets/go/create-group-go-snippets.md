---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewGroup()
description := "Self help community for golf"
requestBody.SetDescription(&description) 
displayName := "Golf Assist"
requestBody.SetDisplayName(&displayName) 
groupTypes := []string {
	"Unified",

}
requestBody.SetGroupTypes(groupTypes)
mailEnabled := true
requestBody.SetMailEnabled(&mailEnabled) 
mailNickname := "golfassist"
requestBody.SetMailNickname(&mailNickname) 
securityEnabled := false
requestBody.SetSecurityEnabled(&securityEnabled) 

result, err := graphClient.Groups().Post(requestBody)


```