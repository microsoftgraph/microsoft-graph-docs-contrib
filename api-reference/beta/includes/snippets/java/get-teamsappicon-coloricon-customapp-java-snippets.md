---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TeamsAppIcon result = graphClient.appCatalogs().teamsApps().byTeamsAppId("{teamsApp-id}").appDefinitions().byTeamsAppDefinitionId("{teamsAppDefinition-id}").colorIcon().get();


```