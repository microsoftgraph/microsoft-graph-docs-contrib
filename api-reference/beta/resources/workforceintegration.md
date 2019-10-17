---
title: "workforceIntegration resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "akumar39"
ms.prod: "Microsoft-Teams"
doc_type: "resourcePageType"
---

# workforceIntegration resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

PROVIDE DESCRIPTION HERE

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get workforceIntegration](../api/workforceintegration-get.md) | [workforceIntegration](workforceintegration.md) | Read properties and relationships of workforceIntegration object. |
| [Update](../api/workforceintegration-update.md) | [workforceIntegration](workforceintegration.md) | Update workforceIntegration object. |
| [Delete](../api/workforceintegration-delete.md) | None | Delete workforceIntegration object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|apiVersion|Int32||
|displayName|String||
|encryption|[workforceIntegrationEncryption](workforceintegrationencryption.md)||
|isActive|Boolean||
|supports|string| Possible values are: `none`, `shift`, `swapRequest`.|
|url|String||

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