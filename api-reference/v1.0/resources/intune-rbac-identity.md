---
title: "Identity resource type"
description: "The Identity"
author: "v-rmanda"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 04/15/2025
---

# Identity resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The Identity

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the identity. This property is read-only.|
|displayName|String|The display name of the identity. This property is read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identity",
  "id": "String (identifier)",
  "displayName": "String"
}
```
