---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.chats.item.installedapps.item.upgrade.UpgradePostRequestBody upgradePostRequestBody = new com.microsoft.graph.beta.chats.item.installedapps.item.upgrade.UpgradePostRequestBody();
graphClient.chats().byChatId("{chat-id}").installedApps().byTeamsAppInstallationId("{teamsAppInstallation-id}").upgrade().post(upgradePostRequestBody);


```