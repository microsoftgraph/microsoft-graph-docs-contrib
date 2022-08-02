---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewOnenoteSection()
displayName := "Section name"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Me().Onenote().SectionGroupsById("sectionGroup-id").Sections().Post(requestBody)


```