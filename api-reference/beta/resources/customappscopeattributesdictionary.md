---
title: "customAppScopeAttributesDictionary resource type"
description: "customAppScopeAttributesDictionary is a dictionary that holds custom attributes for scope objects in different RBAC providers."
author: "bili1"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# customAppScopeAttributesDictionary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The customAppScopeAttributesDictionary is a dictionary type that holds custom attributes for scope objects. The keys may vary based on the implementation from RBAC providers.

## Properties

### For an Exchange Online provider
|Property|Type|Description|
|:---|:---|:---|
|Exclusive | bool | Whether the object is [exclusive scope](/exchange/understanding-exclusive-scopes-exchange-2013-help) or not. |
|RecipientFilter| string | A filter query which defines how you segment your recipients that admins can manage. |


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customAppScopeAttributesDictionary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customAppScopeAttributesDictionary"
}
```

