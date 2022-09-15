---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewExtension()
additionalData := map[string]interface{}{
	"extensionName" : "Com.Contoso.Estimate", 
	"companyName" : "Contoso", 
	"expirationDate" : "2016-07-30T11:00:00.000Z", 
	"dealValue" : int32(1010100) , 
	topPicks := []string {
		"Employees only",
		"Add spouse or guest",
		"Add family",

	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.GroupsById("group-id").ThreadsById("conversationThread-id").PostsById("post-id").ExtensionsById("extension-id").Patch(context.Background(), requestBody, nil)


```