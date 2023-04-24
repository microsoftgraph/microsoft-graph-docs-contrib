---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Team team = new Team();
team.additionalDataManager().put("@microsoft.graph.teamCreationMode", new JsonPrimitive("migration"));
team.additionalDataManager().put("template@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/teamsTemplates('standard')"));
team.displayName = "My Sample Team";
team.description = "My Sample Team’s Description";
team.createdDateTime = OffsetDateTimeSerializer.deserialize("2020-03-14T11:22:17.067Z");

graphClient.teams()
	.buildRequest()
	.post(team);

```