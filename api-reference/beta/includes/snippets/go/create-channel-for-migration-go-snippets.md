---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewChannel()
displayName := "Import_150958_99z"
requestBody.SetDisplayName(&displayName) 
description := "Import_150958_99z"
requestBody.SetDescription(&description) 
createdDateTime , err := time.Parse(time.RFC3339, "2020-03-14T11:22:17.067Z")
requestBody.SetCreatedDateTime(&createdDateTime) 
additionalData := map[string]interface{}{
	"@microsoft.graph.channelCreationMode" : "migration", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.TeamsById("team-id").Channels().Post(context.Background(), requestBody, nil)


```