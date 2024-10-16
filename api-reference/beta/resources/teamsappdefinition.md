---
title: "teamsAppDefinition resource type"
description: "The details of one version of a teamsApp."
author: "MSFTRickyCastaneda"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# teamsAppDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The details of a version of a [teamsApp](teamsapp.md).

## Properties

| Property            | Type     | Description                                            |
|:------------------- |:-------- |:------------------------------------------------------ |
| allowedInstallationScopes | teamsAppInstallationScope collection | A collection of scopes where the Teams app can be installed. Possible values are:</br>`team`—Indicates that the Teams app can be installed within a team and is authorized to access that team's data. </br>`groupChat`—Indicates that the Teams app can be installed within a group chat and is authorized to access that group chat's data.</br> `personal`—Indicates that the Teams app can be installed in the personal scope of a user and is authorized to access that user's data. |
|authorization|[teamsAppAuthorization](../resources/teamsappauthorization.md)|Authorization requirements specified in the Teams app manifest.|
| azureADAppId        | String   | The WebApplicationInfo.Id from the Teams app manifest. |
| displayName         | String   | The name of the app provided by the app developer.     |
| id                  | String   | A unique ID (not the Teams app ID).                     |
| publishingState     | String   | The published status of a specific version of a Teams app. Possible values are:</br>`submitted`—The specific version of the Teams app has been submitted and is under review. </br>`published` - The request to publish the specific version of the Teams app has been approved by the admin and the app is published.</br> `rejected` - The request to publish the specific version of the Teams app was rejected by the admin. |
| teamsAppId          | String   | The ID from the Teams app manifest.                    |
| version             | String   | The version number of the application.                 |

## Relationships

| Relationship   | Type	                          | Description                                                 |
|:-------------- |:------------------------------ |:----------------------------------------------------------- |
| bot            |[teamworkBot](teamworkbot.md)   | The details of the bot specified in the Teams app manifest. |
| colorIcon      |[teamsAppIcon](teamsappicon.md) | The color version of the Teams app's icon.                   |
| dashboardCards |[teamsAppDashboardCardDefinition](../resources/teamsappdashboardcarddefinition.md) collection| Dashboard cards specified in the Teams app manifest.|
| outlineIcon    |[teamsAppIcon](teamsappicon.md) | The outline version of the Teams app's icon.                 |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAppDefinition",
  "baseType": "microsoft.graph.entity"
}-->

```json
{
  "allowedInstallationScopes": ["String"],
  "authorization": "#microsoft.graph.teamsAppAuthorization",
  "azureADAppId": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "publishingState": "#microsoft.graph.teamsAppPublishingState",
  "teamsAppId": "String",
  "version": "String"
}
```

## Related content

- [teamsApp](teamsapp.md)
- [teamsAppIcon](teamsappicon.md)
- [teamsAppInstallation](teamsappinstallation.md)
- [teamsTab](../resources/teamstab.md)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "teamsApp resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


