---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AssociatedTeamInfoCollectionPage associatedTeams = graphClient.me().teamwork().associatedTeams()
	.buildRequest()
	.get();

```