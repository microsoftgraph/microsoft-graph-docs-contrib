---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MessageRule messageRule = new MessageRule();
messageRule.setDisplayName("From partner");
messageRule.setSequence(2);
messageRule.setIsEnabled(true);
MessageRulePredicates conditions = new MessageRulePredicates();
LinkedList<String> senderContains = new LinkedList<String>();
senderContains.add("adele");
conditions.setSenderContains(senderContains);
messageRule.setConditions(conditions);
MessageRuleActions actions = new MessageRuleActions();
LinkedList<Recipient> forwardTo = new LinkedList<Recipient>();
Recipient recipient = new Recipient();
EmailAddress emailAddress = new EmailAddress();
emailAddress.setName("Alex Wilbur");
emailAddress.setAddress("AlexW@contoso.com");
recipient.setEmailAddress(emailAddress);
forwardTo.add(recipient);
actions.setForwardTo(forwardTo);
actions.setStopProcessingRules(true);
messageRule.setActions(actions);
MessageRule result = graphClient.me().mailFolders().byMailFolderId("{mailFolder-id}").messageRules().post(messageRule);


```