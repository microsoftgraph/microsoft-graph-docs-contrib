---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewTeamsAppSettings()
"@odata.type" := "#microsoft.graph.teamsAppSettings"
requestBody.Set"@odata.type"(&"@odata.type") 
isChatResourceSpecificConsentEnabled := "true"
requestBody.SetIsChatResourceSpecificConsentEnabled(&isChatResourceSpecificConsentEnabled) 

graphClient.Teamwork().TeamsAppSettings().Patch(requestBody)


```