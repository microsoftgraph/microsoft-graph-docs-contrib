---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TeamsAppSettings teamsAppSettings = new TeamsAppSettings();
teamsAppSettings.setOdataType("#microsoft.graph.teamsAppSettings");
teamsAppSettings.setAllowUserRequestsForAppAccess(true);
TeamsAppSettings result = graphClient.teamwork().teamsAppSettings().patch(teamsAppSettings);


```