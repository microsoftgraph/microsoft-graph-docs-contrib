---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.teams.item.installedapps.item.upgrade.UpgradePostRequestBody upgradePostRequestBody = new com.microsoft.graph.beta.teams.item.installedapps.item.upgrade.UpgradePostRequestBody();
graphClient.teams().byTeamId("{team-id}").installedApps().byTeamsAppInstallationId("{teamsAppInstallation-id}").upgrade().post(upgradePostRequestBody);


```