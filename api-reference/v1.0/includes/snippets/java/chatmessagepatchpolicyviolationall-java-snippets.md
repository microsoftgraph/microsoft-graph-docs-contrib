---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ChatMessage chatMessage = new ChatMessage();
ChatMessagePolicyViolation policyViolation = new ChatMessagePolicyViolation();
ChatMessagePolicyViolationPolicyTip policyTip = new ChatMessagePolicyViolationPolicyTip();
policyTip.setGeneralText("This item has been blocked by the administrator.");
policyTip.setComplianceUrl("https://contoso.com/dlp-policy-page");
LinkedList<String> matchedConditionDescriptions = new LinkedList<String>();
matchedConditionDescriptions.add("Credit Card Number");
policyTip.setMatchedConditionDescriptions(matchedConditionDescriptions);
policyViolation.setPolicyTip(policyTip);
policyViolation.setVerdictDetails(EnumSet.of(ChatMessagePolicyViolationVerdictDetailsTypes.AllowOverrideWithoutJustification, ChatMessagePolicyViolationVerdictDetailsTypes.AllowFalsePositiveOverride));
policyViolation.setDlpAction(EnumSet.of(ChatMessagePolicyViolationDlpActionTypes.BlockAccess));
chatMessage.setPolicyViolation(policyViolation);
ChatMessage result = graphClient.teams().byTeamId("{team-id}").channels().byChannelId("{channel-id}").messages().byChatMessageId("{chatMessage-id}").patch(chatMessage);


```