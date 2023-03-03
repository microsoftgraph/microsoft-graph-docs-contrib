---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewChatMessage()
policyViolation := graphmodels.NewChatMessagePolicyViolation()
policyTip := graphmodels.NewChatMessagePolicyViolationPolicyTip()
generalText := "This item has been blocked by the administrator."
policyTip.SetGeneralText(&generalText) 
complianceUrl := "https://contoso.com/dlp-policy-page"
policyTip.SetComplianceUrl(&complianceUrl) 
matchedConditionDescriptions := []string {
	"Credit Card Number",

}
policyTip.SetMatchedConditionDescriptions(matchedConditionDescriptions)
policyViolation.SetPolicyTip(policyTip)
verdictDetails := graphmodels.ALLOWOVERRIDEWITHOUTJUSTIFICATION,ALLOWFALSEPOSITIVEOVERRIDE_CHATMESSAGEPOLICYVIOLATIONVERDICTDETAILSTYPES 
policyViolation.SetVerdictDetails(&verdictDetails) 
dlpAction := graphmodels.BLOCKACCESS_CHATMESSAGEPOLICYVIOLATIONDLPACTIONTYPES 
policyViolation.SetDlpAction(&dlpAction) 
requestBody.SetPolicyViolation(policyViolation)

result, err := graphClient.TeamsById("team-id").ChannelsById("channel-id").MessagesById("chatMessage-id").Patch(context.Background(), requestBody, nil)


```