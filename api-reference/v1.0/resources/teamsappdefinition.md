---
title: "teamsAppDefinition resource type"
description: "Represents the details of one version of a teamsApp."
author: "MSFTRickyCastaneda"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 10/17/2024
---

# teamsAppDefinition resource type

Namespace: microsoft.graph

Represents the details of a version of a [teamsApp](teamsapp.md).

## Properties

| Property            | Type     | Description |
|:------------------- |:-------- |:----------- |
| authorization       | [teamsAppAuthorization](../resources/teamsappauthorization.md)| Authorization requirements specified in the Teams app manifest. |
| description         | String   | Verbose description of the application. |
| displayName         | String   | The name of the app provided by the app developer. |
| id                  | String   | A unique ID (not the Teams app ID). |
| publishingState| String |The published status of a specific version of a Teams app. The possible values are:</br>`submitted`—The specific version of the Teams app was submitted and is under review.</br>`published`—The request to publish the specific version of the Teams app was approved by the admin and the app is published.</br>`rejected`—The admin rejected the request to publish the specific version of the Teams app. |
| shortDescription    | String   | Short description of the application. |
| teamsAppId          | String   | The ID from the Teams app manifest. |
| version             | String   | The version number of the application. |

## Relationships

| Relationship | Type | Description |
|:---------------|:--------|:----------|
|bot|[teamworkBot](teamworkbot.md) | The details of the bot specified in the Teams app manifest. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAppDefinition",
  "baseType": "microsoft.graph.entity"
}-->

```json
{
  "authorization": {"@odata.type": "microsoft.graph.teamsAppAuthorization"},
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "publishingState": "String",
  "shortDescription": "String",
  "teamsAppId": "String",
  "version": "String"
}
```

## Related content

- [teamsApp](teamsapp.md)
- [teamsAppInstallation](teamsappinstallation.md)
- [teamsTab](../resources/teamstab.md)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "teamsApp resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
