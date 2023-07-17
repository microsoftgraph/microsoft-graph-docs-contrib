---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsAppSettings teamsAppSettings = new TeamsAppSettings();
teamsAppSettings.allowUserRequestsForAppAccess = false;

graphClient.teamwork().teamsAppSettings()
	.buildRequest()
	.patch(teamsAppSettings);

```