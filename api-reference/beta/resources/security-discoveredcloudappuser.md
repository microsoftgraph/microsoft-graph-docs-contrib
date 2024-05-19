---
title: "discoveredCloudAppUser resource type"
description: "Respresents discovered user"
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# discoveredCloudAppUser resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-discoveredcloudappdetail-list-users.md)|[microsoft.graph.security.discoveredCloudAppUser](../resources/security-discoveredcloudappuser.md) collection|Get a list of the [microsoft.graph.security.discoveredCloudAppUser](../resources/security-discoveredcloudappuser.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|userIdentifier|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "userIdentifier",
  "@odata.type": "microsoft.graph.security.discoveredCloudAppUser",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.discoveredCloudAppUser",
  "userIdentifier": "String (identifier)"
}
```

