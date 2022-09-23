---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewGroup()
additionalData := map[string]interface{}{
	"members@odata.bind" := []string {
		"https://graph.microsoft.com/v1.0/directoryObjects/{id}",
		"https://graph.microsoft.com/v1.0/directoryObjects/{id}",
		"https://graph.microsoft.com/v1.0/directoryObjects/{id}",

	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.GroupsById("group-id").Patch(context.Background(), requestBody, nil)


```