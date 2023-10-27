---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsTab teamsTab = new TeamsTab();
teamsTab.displayName = "My Contoso Tab - updated";

graphClient.teams("{id}").channels("{id}").tabs("{id}")
	.buildRequest()
	.patch(teamsTab);

```