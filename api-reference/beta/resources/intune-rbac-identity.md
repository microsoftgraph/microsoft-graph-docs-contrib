---
title: "identity resource type"
description: "The Identity"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# identity resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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
