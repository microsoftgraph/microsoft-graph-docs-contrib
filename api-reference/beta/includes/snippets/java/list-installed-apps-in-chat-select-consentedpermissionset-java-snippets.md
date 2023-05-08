---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsAppInstallationCollectionPage installedApps = graphClient.chats("19[d86ec7f6b247d3b9e519b0bfef5d03@thread.v2").installedApps()
	.buildRequest()
	.select("consentedPermissionSet,id")
	.get();

```