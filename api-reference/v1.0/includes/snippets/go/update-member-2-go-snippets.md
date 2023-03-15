---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewConversationMember()
roles := []string {
	"owner",

}
requestBody.SetRoles(roles)

result, err := graphClient.TeamsById("team-id").MembersById("conversationMember-id").Patch(context.Background(), requestBody, nil)


```