---
title: "teamsAppAuthorization resource type"
description: "The authorization details of a teamsApp."
author: "sweta-thapliyal"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# teamsAppAuthorization resource type

Namespace: microsoft.graph

The authorization details of a [teamsApp](teamsapp.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|clientAppId|String|The registration ID of the Microsoft Entra app ID associated with the [teamsApp](teamsapp.md). |
|requiredPermissionSet|[teamsAppPermissionSet](../resources/teamsapppermissionset.md)|Set of permissions required by the [teamsApp](teamsapp.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAppAuthorization"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAppAuthorization",
  "clientAppId": "String",
  "requiredPermissionSet": {"@odata.type": "microsoft.graph.teamsAppPermissionSet"}
}
```
