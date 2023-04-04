---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsAppSettings teamsAppSettings = graphClient.teamwork().teamsAppSettings()
	.buildRequest()
	.get();

```