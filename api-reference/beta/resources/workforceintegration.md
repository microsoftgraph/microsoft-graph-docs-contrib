---
title: "workforceIntegration resource type"
description: "An instance of a workforce integration with Shifts"
localization_priority: Normal
author: "akumar39"
ms.prod: "microsoft-teams"
doc_type: "resourcePageType"
---

# workforceIntegration resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An instance of a workforceforce integration with Shifts.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get workforceIntegration](../api/workforceintegration-get.md) | [workforceIntegration](workforceintegration.md) | Read properties and relationships of workforceIntegration object. |
| [Update](../api/workforceintegration-update.md) | [workforceIntegration](workforceintegration.md) | Update workforceIntegration object. |
| [Delete](../api/workforceintegration-delete.md) | None | Delete workforceIntegration object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|apiVersion|Int32|API version for the call back url. Start with 1.|
|displayName|String|Name of the workforce integration.|
|encryption|[workforceIntegrationEncryption](workforceintegrationencryption.md)|The workforce integration encryption resource.|
|isActive|Boolean||
|supports|string| Possible values are: `none`, `shift`, `swapRequest`, `openshift`, `openShiftRequest`, `userShiftPreferences`|
|url|String| Workforce Integration url for callbacks from the Shift service.|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workforceIntegration",
  "baseType": ""
}-->

```json
{
  "apiVersion": 1024,
  "displayName": "String",
  "encryption": {"@odata.type": "microsoft.graph.workforceIntegrationEncryption"},
  "isActive": true,
  "supports": "string",
  "url": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "workforceIntegration resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->