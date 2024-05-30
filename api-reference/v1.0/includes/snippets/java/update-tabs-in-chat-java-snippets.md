---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TeamsTab teamsTab = new TeamsTab();
teamsTab.setDisplayName("My Contoso Tab - updated again");
TeamsTab result = graphClient.chats().byChatId("{chat-id}").tabs().byTeamsTabId("{teamsTab-id}").patch(teamsTab);


```