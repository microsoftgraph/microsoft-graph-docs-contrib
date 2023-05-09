---
title: "customAppScopeAttributesDictionary resource type"
description: "Represents a dictionary type that holds custom attributes for scope objects in different RBAC providers."
author: "bili1"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# customAppScopeAttributesDictionary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a dictionary type that holds custom attributes for scope objects in different RBAC providers. The keys might vary based on the implementation from RBAC providers.

Currently only the Exchange Online RBAC provider is supported.

## Properties

<!--### For an Exchange Online provider-->
|Property|Type|Description|
|:---|:---|:---|
|exclusive | Boolean | Indicates whether the object is an [exclusive scope](/exchange/understanding-exclusive-scopes-exchange-2013-help). |
|recipientFilter| String | A filter query that defines how you segment your recipients that admins can manage. |

## JSON representation

The following is a JSON representation of the resource.

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
