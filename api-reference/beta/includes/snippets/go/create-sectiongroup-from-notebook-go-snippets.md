---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSectionGroup()
displayName := "Section group name"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Me().Onenote().NotebooksById("notebook-id").SectionGroups().Post(context.Background(), requestBody, nil)


```