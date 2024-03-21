---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Team team = new Team();
team.setDisplayName("My Sample Team");
team.setDescription("My Sample Team’s Description");
OffsetDateTime createdDateTime = OffsetDateTime.parse("2020-03-14T11:22:17.067Z");
team.setCreatedDateTime(createdDateTime);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("@microsoft.graph.teamCreationMode", "migration");
additionalData.put("template@odata.bind", "https://graph.microsoft.com/beta/teamsTemplates('standard')");
team.setAdditionalData(additionalData);
Team result = graphClient.teams().post(team);


```