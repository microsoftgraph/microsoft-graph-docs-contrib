---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsAppInstallation teamsAppInstallation = graphClient.chats("19[d86ec7f6b247d3b9e519b0bfef5d03@thread.v2").installedApps("MTk6NWJkODZlYzdmNmIyNDdkM2I5ZTUxOWIwYmZlZjVkMDNAdGhyZWFkLnYyIyMyYjUyNGUyOC05NWNlLTRjOWItOTc3My00YTViZDZlYzE3NzA=")
	.buildRequest()
	.select("consentedPermissionSet,id")
	.get();

```