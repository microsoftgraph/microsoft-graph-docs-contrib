---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ConversationMember result = graphClient.teams().byTeamId("{team-id}").channels().byChannelId("{channel-id}").allMembers().byConversationMemberId("{conversationMember-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"id", "displayName", "roles"};
});


```