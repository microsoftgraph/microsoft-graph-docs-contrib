---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsAppInstallationCollectionPage installedApps = graphClient.teams("7eeb5a95-f602-4861-ab67-49714fa5a020").installedApps()
	.buildRequest()
	.select("consentedPermissionSet,id")
	.get();

```