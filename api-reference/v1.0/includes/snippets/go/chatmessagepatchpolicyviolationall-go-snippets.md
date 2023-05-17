---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

result, err := graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").Messages().ByMessageId("chatMessage-id").Patch(context.Background(), requestBody, nil)


```