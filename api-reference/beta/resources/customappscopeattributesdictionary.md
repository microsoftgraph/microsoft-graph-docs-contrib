---
title: "customAppScopeAttributesDictionary resource type"
description: "Represents a dictionary type that holds custom attributes for scope objects in different RBAC providers."
author: "cubika"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# customAppScopeAttributesDictionary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a dictionary type that holds custom attributes for scope objects in different RBAC providers. The keys might vary based on the implementation from RBAC providers.
Inherits from [Dictionary](../resources/dictionary.md). Used by Exchange Online provider and Microsoft Defender XDR Unified RBAC provider.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|exclusive | Boolean | Indicates whether the object is an [exclusive scope](/exchange/understanding-exclusive-scopes-exchange-2013-help). |
|recipientFilter| String | A filter query that defines how you segment your recipients that admins can manage. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customAppScopeAttributesDictionary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customAppScopeAttributesDictionary",
  "exclusive": "Boolean",
  "recipientFilter": "String"
}
```
