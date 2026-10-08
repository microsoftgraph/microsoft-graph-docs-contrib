---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TeamworkSectionItem teamworkSectionItem = new TeamworkSectionItem();
teamworkSectionItem.setId("eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiIxOTAzMzYyMTIyMTAifQ");
TeamworkSectionItem result = graphClient.users().byUserId("{user-id}").teamwork().sections().byTeamworkSectionId("{teamworkSection-id}").items().post(teamworkSectionItem, requestConfiguration -> {
	requestConfiguration.headers.add("If-Match", "\"1742515210\"");
});


```