---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Team team = new Team();
team.setDisplayName("My Sample Team");
team.setDescription("My Sample Team’s Description");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("template@odata.bind", "https://graph.microsoft.com/v1.0/teamsTemplates('standard')");
team.setAdditionalData(additionalData);
Team result = graphClient.teams().post(team);


```