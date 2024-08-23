---
title: "cloudPcUserRoleScopeTagInfo resource type"
description: "Represents the scope tag info with display name and identity."
author: "ecmadao"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcUserRoleScopeTagInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the scope tag info with display name and identity.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Scope tag display name.|
|roleScopeTagId|String|Scope tag ID.|

## Relationships

None

## JSON Representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcUserRoleScopeTagInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcUserRoleScopeTagInfo",
  "displayName": "String",
  "roleScopeTagId": "String"
}
```
