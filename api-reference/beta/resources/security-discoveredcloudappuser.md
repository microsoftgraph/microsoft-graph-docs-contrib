---
title: "discoveredCloudAppUser resource type"
description: "Represents the resource available for users accessing a discovered cloud app."
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# discoveredCloudAppUser resource type

Namespace: microsoft.graph.security

Represents the resource available for users accessing a discovered cloud app.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-discoveredcloudappdetail-list-users.md)|[microsoft.graph.security.discoveredCloudAppUser](../resources/security-discoveredcloudappuser.md) collection|Get a list of users accessing discovered apps.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|userIdentifier|String|The user Identifier.|

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

