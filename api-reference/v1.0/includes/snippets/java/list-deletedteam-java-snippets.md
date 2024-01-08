---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeletedTeamCollectionPage deletedTeams = graphClient.teamwork().deletedTeams()
	.buildRequest()
	.get();

```