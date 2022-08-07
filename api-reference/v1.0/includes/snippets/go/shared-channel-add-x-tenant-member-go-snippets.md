---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewConversationMember()
"@odata.type" := "#microsoft.graph.aadUserConversationMember"
requestBody.Set"@odata.type"(&"@odata.type") 
roles := []string {

}
requestBody.SetRoles(roles)
additionalData := map[string]interface{}{
	"user@odata.bind" : "https://graph.microsoft.com/v1.0/users/bc3598dd-cce4-4742-ae15-173429951408", 
	"tenantId" : "a18103d1-a6ef-4f66-ac64-e4ef42ea8681", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.TeamsById("team-id").ChannelsById("channel-id").Members().Post(requestBody)


```