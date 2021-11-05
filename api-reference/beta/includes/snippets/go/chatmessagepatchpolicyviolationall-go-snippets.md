---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewChatMessage()
policyViolation := msgraphsdk.NewChatMessagePolicyViolation()
requestBody.SetPolicyViolation(policyViolation)
policyTip := msgraphsdk.NewChatMessagePolicyViolationPolicyTip()
policyViolation.SetPolicyTip(policyTip)
generalText := "This item has been blocked by the administrator."
policyTip.SetGeneralText(&generalText)
complianceUrl := "https://contoso.com/dlp-policy-page"
policyTip.SetComplianceUrl(&complianceUrl)
policyTip.SetMatchedConditionDescriptions( []String {
	"Credit Card Number",
}
verdictDetails := "AllowOverrideWithoutJustification,AllowFalsePositiveOverride"
policyViolation.SetVerdictDetails(&verdictDetails)
dlpAction := "BlockAccess"
policyViolation.SetDlpAction(&dlpAction)
options := &msgraphsdk.ChatMessageRequestBuilderPatchOptions{
	Body: requestBody,
}
teamId := "team-id"
channelId := "channel-id"
chatMessageId := "chatMessage-id"
graphClient.TeamsById(&teamId).ChannelsById(&channelId).MessagesById(&chatMessageId).Patch(options);


```