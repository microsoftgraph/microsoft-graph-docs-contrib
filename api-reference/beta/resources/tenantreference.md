---
title: "tenantReference resource type"
description: "Represents the information used to identify a Microsoft Entra tenant."
author: "jkdouglas"
ms.reviewer: mapamu
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# tenantReference resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the information used to identify a Microsoft Entra tenant. This type is only used in the context of an [outboundSharedUserProfile](../resources/outboundshareduserprofile.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
| tenantId | String | The identifier of the Microsoft Entra tenant. Read-only. Key. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "tenantId",
  "@odata.type": "microsoft.graph.tenantReference",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.tenantReference",
  "tenantId": "String"
}
```
