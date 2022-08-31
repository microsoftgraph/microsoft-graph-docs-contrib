---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewTeam()
displayName := "My Class Team"
requestBody.SetDisplayName(&displayName) 
description := "My Class Team’s Description"
requestBody.SetDescription(&description) 
additionalData := map[string]interface{}{
	"template@odata.bind" : "https://graph.microsoft.com/beta/teamsTemplates('educationClass')", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Teams().Post(requestBody)


```