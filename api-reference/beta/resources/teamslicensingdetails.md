---
title: "TeamsLicensingDetails resource type"
description: "A container where you can find all the different Microsoft Teams license details for each user in the tenant."
author: "mea"
doc_type: resourcePageType
ms.localizationpriority: high
ms.prod: "microsoft-teams"
---

# TeamsLicensingDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A container where you can find all the different Microsoft Teams license details for each user in the tenant. 

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get Teams Licensing Details](../api/user-get-teamslicensingdetails.md)|[teamsLicensingDetails](../resources/teamsLicensingDetails.md) object|Get the Microsoft Teams license details for the specified user.|

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|hasTeamsLicense| boolean | Represents whether the user has a valid license to use Microsoft Teams. |

## Relationships

None

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsLicensingDetails",
  "baseType": "microsoft.graph.entity"
}-->

```json
{
  "hasTeamsLicense": "boolean",
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "teamslicensingdetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

## See also

- [teamwork resource type](teamwork.md)
- [userTeamwork resource type](userteamwork.md)
