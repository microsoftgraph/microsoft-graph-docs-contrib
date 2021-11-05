---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewConversationMember()
requestBody.SetRoles( []String {
	"owner",
}
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.aadUserConversationMember",
}
options := &msgraphsdk.ConversationMemberRequestBuilderPatchOptions{
	Body: requestBody,
}
teamId := "team-id"
channelId := "channel-id"
conversationMemberId := "conversationMember-id"
graphClient.TeamsById(&teamId).ChannelsById(&channelId).MembersById(&conversationMemberId).Patch(options);


```