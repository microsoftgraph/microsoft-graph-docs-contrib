---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsTab teamsTab = graphClient.teams("{id}").channels("{id}").tabs("{id}")
	.buildRequest()
	.expand("teamsApp")
	.get();

```