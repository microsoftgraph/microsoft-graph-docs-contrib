---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MessageRule messageRule = new MessageRule();
messageRule.setDisplayName("Important from partner");
MessageRuleActions actions = new MessageRuleActions();
actions.setMarkImportance(Importance.High);
messageRule.setActions(actions);
MessageRule result = graphClient.me().mailFolders().byMailFolderId("{mailFolder-id}").messageRules().byMessageRuleId("{messageRule-id}").patch(messageRule);


```