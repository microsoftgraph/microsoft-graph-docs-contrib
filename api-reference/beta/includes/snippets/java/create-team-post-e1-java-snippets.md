---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Team team = new Team();
team.setDisplayName("My Sample Team");
team.setDescription("My Sample Team's Description");
team.setFirstChannelName("My First Channel of the sample team");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("template@odata.bind", "https://graph.microsoft.com/beta/teamsTemplates('standard')");
team.setAdditionalData(additionalData);
Team result = graphClient.teams().post(team);


```