---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Team team = new Team();
team.additionalDataManager().put("templateDefinition@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/teamwork/teamTemplates/com.microsoft.teams.template.ManageAProject/definitions/Y29tLm1pY3Jvc29mdC50ZWFtcy50ZW1wbGF0ZS5NYW5hZ2VBUHJvamVjdCMjUHVibGljIyNhci1TQQ=="));
team.displayName = "My Sample Team";
team.description = "My Sample Team’s Description";

graphClient.teams()
	.buildRequest()
	.post(team);

```