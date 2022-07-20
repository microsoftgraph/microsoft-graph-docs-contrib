---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSectionGroupsPostRequestBody()
additionalData := map[string]interface{}{
	"displayName" : "Section group name", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Me().Onenote().SectionGroupsById("sectionGroup-id").SectionGroups().Post(requestBody)


```