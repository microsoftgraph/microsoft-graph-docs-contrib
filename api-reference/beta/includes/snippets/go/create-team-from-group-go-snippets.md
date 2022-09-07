---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewTeam()
additionalData := map[string]interface{}{
	"template@odata.bind" : "https://graph.microsoft.com/beta/teamsTemplates('standard')", 
	"group@odata.bind" : "https://graph.microsoft.com/beta/groups('71392b2f-1765-406e-86af-5907d9bdb2ab')", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Teams().Post(requestBody)


```