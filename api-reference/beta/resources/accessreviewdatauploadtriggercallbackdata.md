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

This object represents the columns expected in the CSV file that is uploaded in a [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md). 


Inherits from [customExtensionData](../resources/customextensiondata.md).


## Properties
| Property              |Type| Description |
|:----------------------|:---|:-----------------------|
| permissionDescription |String| A description for the permission.|
| permissionId          |String| The id of the permission assigned to this principal.|
| permissionName        |String| The name of the permission assigned to this principal.|
| permissionType        |String| The type of the permission assigned to this principal.|
| principalId           |String| The id of the principal who has permissions on the custom data provided resource.|
| principalType         |String| The type of the principal. The allowed values are "EntraIdUser". |

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
  "principalId": "String",
  "principalType": "String",
  "permissionId": "String",
  "permissionName": "String",
  "permissionDescription": "String",
  "permissionType": "String"
}
```

