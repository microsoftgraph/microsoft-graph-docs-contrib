---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewGroup()
description := "Library Assist"
requestBody.SetDescription(&description) 
displayName := "Library Assist"
requestBody.SetDisplayName(&displayName) 
groupTypes := []string {
	"Unified",

}
requestBody.SetGroupTypes(groupTypes)
mailEnabled := true
requestBody.SetMailEnabled(&mailEnabled) 
mailNickname := "library-help"
requestBody.SetMailNickname(&mailNickname) 

graphClient.GroupsById("group-id").Patch(context.Background(), requestBody, nil)


```