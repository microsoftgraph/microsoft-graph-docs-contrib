---
title: "accessReviewDataUploadTriggerCallbackData resource type"
description: "The schematized representation of the CSV columns expected in the uploaded files."
author: "pratima-cloudknox"
ms.date: 10/09/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessReviewDataUploadTriggerCallbackData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This object represents the columns expected in the CSV file that is uploaded in an upload session. 


Inherits from [customExtensionData](../resources/customextensiondata.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|permissionDescription|String|**TODO: Add Description**|
|permissionId|String|**TODO: Add Description**|
|permissionName|String|**TODO: Add Description**|
|permissionType|String|**TODO: Add Description**|
|principalAADId|String|**TODO: Add Description**|
|resourceDescription|String|**TODO: Add Description**|
|resourceId|String|**TODO: Add Description**|
|resourceName|String|**TODO: Add Description**|
|resourceOwners|String collection|**TODO: Add Description**|
|resourceType|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewDataUploadTriggerCallbackData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewDataUploadTriggerCallbackData",
  "principalAADId": "String",
  "resourceId": "String",
  "resourceName": "String",
  "resourceDescription": "String",
  "resourceType": "String",
  "permissionId": "String",
  "permissionName": "String",
  "permissionDescription": "String",
  "permissionType": "String",
  "resourceOwners": [
    "String"
  ]
}
```

