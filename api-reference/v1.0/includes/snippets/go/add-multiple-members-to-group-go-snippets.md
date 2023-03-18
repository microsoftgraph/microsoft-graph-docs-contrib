---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewGroup()
additionalData := map[string]interface{}{
	odataBind := []string {
		"https://graph.microsoft.com/v1.0/directoryObjects/{id}",
		"https://graph.microsoft.com/v1.0/directoryObjects/{id}",
		"https://graph.microsoft.com/v1.0/directoryObjects/{id}",

	}
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.GroupsById("group-id").Patch(context.Background(), requestBody, nil)


```