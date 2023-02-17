---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewConversationMember()
roles := []string {
	"owner",

}
requestBody.SetRoles(roles)
additionalData := map[string]interface{}{
	"user@odata.bind" : "https://graph.microsoft.com/v1.0/users('jacob@contoso.com')", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.TeamsById("team-id").Members().Post(context.Background(), requestBody, nil)


```