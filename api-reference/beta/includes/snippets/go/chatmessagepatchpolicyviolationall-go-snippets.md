---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
messages, err := graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").Messages().ByChatMessageId("chatMessage-id").Patch(context.Background(), requestBody, nil)


```