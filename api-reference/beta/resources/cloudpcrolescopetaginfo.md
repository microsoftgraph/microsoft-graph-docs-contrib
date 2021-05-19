---
title: "cloudPcRoleScopeTagInfo resource type"
description: "Represents the scope tag info with display name and identity."
author: "ecmadao"
localization_priority: Normal
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcRoleScopeTagInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the scope tag info with display name and identity.

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Scope Tag Display name.|
|roleScopeTagId|String|Scope Tag Id.|

## Relationships

None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcRoleScopeTagInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcRoleScopeTagInfo",
  "displayName": "String",
  "roleScopeTagId": "String"
}
```




