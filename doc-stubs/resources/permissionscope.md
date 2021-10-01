---
title: "permissionScope resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# permissionScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|adminConsentDescription|String|**TODO: Add Description**|
|adminConsentDisplayName|String|**TODO: Add Description**|
|dependentMicrosoftGraphPermissions|String collection|**TODO: Add Description**|
|id|Guid|**TODO: Add Description**|
|isEnabled|Boolean|**TODO: Add Description**|
|origin|String|**TODO: Add Description**|
|type|String|**TODO: Add Description**|
|userConsentDescription|String|**TODO: Add Description**|
|userConsentDisplayName|String|**TODO: Add Description**|
|value|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.permissionScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.permissionScope",
  "adminConsentDescription": "String",
  "adminConsentDisplayName": "String",
  "dependentMicrosoftGraphPermissions": [
    "String"
  ],
  "id": "String (identifier)",
  "isEnabled": "Boolean",
  "origin": "String",
  "type": "String",
  "userConsentDescription": "String",
  "userConsentDisplayName": "String",
  "value": "String"
}
```

