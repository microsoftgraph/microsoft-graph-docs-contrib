---
title: "discoveredCloudAppUser resource type"
description: "**TODO: Add Description**"
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
|[Create](../api/security-discoveredcloudappdetail-post-users.md)|[microsoft.graph.security.discoveredCloudAppUser](../resources/security-discoveredcloudappuser.md)|Create a new [microsoft.graph.security.discoveredCloudAppUser](../resources/security-discoveredcloudappuser.md) object.|
|[Get](../api/security-discoveredcloudappuser-get.md)|[microsoft.graph.security.discoveredCloudAppUser](../resources/security-discoveredcloudappuser.md)|Read the properties and relationships of a [microsoft.graph.security.discoveredCloudAppUser](../resources/security-discoveredcloudappuser.md) object.|
|[Update](../api/security-discoveredcloudappuser-update.md)|[microsoft.graph.security.discoveredCloudAppUser](../resources/security-discoveredcloudappuser.md)|Update the properties of a [microsoft.graph.security.discoveredCloudAppUser](../resources/security-discoveredcloudappuser.md) object.|
|[Delete](../api/security-discoveredcloudappdetail-delete-users.md)|None|Delete a [microsoft.graph.security.discoveredCloudAppUser](../resources/security-discoveredcloudappuser.md) object.|

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

