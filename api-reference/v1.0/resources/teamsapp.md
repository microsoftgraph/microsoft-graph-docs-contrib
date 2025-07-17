---
title: "teamsApp resource type"
description: "Represents an app in the Microsoft Teams app catalog."
author: "MSFTRickyCastaneda"
ms.localizationpriority: high
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 08/19/2024
---

# teamsApp resource type

Namespace: microsoft.graph

Represents an app in the [Microsoft Teams](teams-api-overview.md) app catalog.

Users can see these apps in the Microsoft Teams Store, and these apps can be installed in [teams](team.md) using the [Add app to team](../api/team-post-installedapps.md) method.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List apps in catalog](../api/appcatalogs-list-teamsapps.md) | [teamsApp](teamsapp.md) collection | List all the apps in the Microsoft Teams apps catalog.|
|[Publish apps to catalog](../api/teamsapp-publish.md) | [teamsApp](teamsapp.md) | Upload an app to your organization's app catalog.|
|[Update app in catalog](../api/teamsapp-update.md) | [teamsApp](teamsapp.md) | Update an app in your organization's app catalog.|
|[Delete app from catalog](../api/teamsapp-delete.md) | None | Remove an app from your organization's app catalog.|
|[Get associated bot](../api/teamworkbot-get.md) | [teamworkbot](teamworkbot.md) | Get the bot associated with the Teams app.|

## Properties

| Property            | Type     | Description |
|:------------------- |:-------- |:----------- |
| displayName                | string   | The name of the catalog app provided by the app developer in the [Microsoft Teams zip app package](/microsoftteams/platform/concepts/apps/apps-package). |
| distributionMethod  | teamsAppDistributionMethod     | The method of distribution for the app. Read-only.|
| externalId          | string   | The ID of the catalog provided by the app developer in the [Microsoft Teams zip app package](/microsoftteams/platform/concepts/apps/apps-package). |
| id                  | string   | The app ID generated for the catalog is different from the developer-provided ID found within the [Microsoft Teams zip app package](/microsoftteams/platform/concepts/apps/apps-package). The **externalId** value is empty for apps with a **distributionMethod** type of `store`. When apps are published to the global store, the **id** of the app matches the **id** in the app manifest. |

### teamsAppDistributionMethod values

|Member|Value|Description|
|:---|:---|:---|
|store|0| The app is available to all tenants through the Microsoft Teams app store.|
|organization|1|The app is available only in this tenant.|
|sideloaded|2|The app is available only to the user/team its installed to.|

## Relationships

| Relationship | Type | Description |
|:---------------|:--------|:----------|
|appDefinitions|[teamsAppDefinition](teamsappdefinition.md) collection| The details for each version of the app. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsApp",
  "baseType": "microsoft.graph.entity"
}-->

```json
{
  "externalId": "string",
  "displayName": "string",
  "distributionMethod": "string",
  "id": "string"
}
```

## Related content

- [teamsAppInstallation](teamsappinstallation.md)
- [teamsAppDefinition](teamsappdefinition.md)
- [teamsTab](../resources/teamstab.md)
- [App catalog sample (C#)](https://github.com/OfficeDev/Microsoft-Teams-Samples/tree/main/samples/graph-appcatalog-lifecycle/csharp)
- [App catalog sample (Node.JS)](https://github.com/OfficeDev/Microsoft-Teams-Samples/tree/main/samples/graph-appcatalog-lifecycle/nodejs)
- [Teams app catalog lifecycle C# sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-appcatalog-lifecycle/csharp)
- [Teams app catalog lifecycle Node.js sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-appcatalog-lifecycle/nodejs)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "teamsApp resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


