---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TeamworkSection teamworkSection = new TeamworkSection();
teamworkSection.setDisplayName("Important Conversations");
TeamworkSection result = graphClient.users().byUserId("{user-id}").teamwork().sections().byTeamworkSectionId("{teamworkSection-id}").patch(teamworkSection, requestConfiguration -> {
	requestConfiguration.headers.add("If-Match", "\"1742515200\"");
});


```