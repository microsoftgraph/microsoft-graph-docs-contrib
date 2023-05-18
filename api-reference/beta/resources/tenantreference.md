---
title: "tenantReference resource type"
description: "Represents the information used to identify an Azure AD tenant."
author: "jkdouglas"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# tenantReference resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the information used to identify an Azure AD tenant. This type is only used in the context of an [outboundSharedUserProfile](../resources/outboundshareduserprofile.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
| tenantId | String | The identifier of the Azure AD tenant. Read-only. Key. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
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
