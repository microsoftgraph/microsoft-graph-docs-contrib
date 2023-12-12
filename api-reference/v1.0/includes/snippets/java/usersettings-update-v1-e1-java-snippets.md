---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserSettings userSettings = new UserSettings();
userSettings.contributionToContentDiscoveryDisabled = true;

graphClient.me().settings()
	.buildRequest()
	.patch(userSettings);

```