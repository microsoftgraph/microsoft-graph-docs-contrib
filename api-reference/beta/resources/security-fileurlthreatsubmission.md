---
title: "fileUrlThreatSubmission resource type"
description: "Represents file threat submission object created when a submission is made using a file URL."
author: "caigen"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# fileUrlThreatSubmission resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a file threat submission object created when a submission is made using a file URL. This API is reserved and isn't currently supported.

Inherits from [fileThreatSubmission](../resources/security-filethreatsubmission.md).

## Properties
| Property | Type   | Description                   |
|:---------|:-------|:------------------------------|
| fileUrl  | String | It specifies the URL of the file that needs to be submitted. |

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.fileUrlThreatSubmission",
  "baseType": "microsoft.graph.security.fileThreatSubmission",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.fileUrlThreatSubmission",
  "id": "String (identifier)",
  "tenantId": "String",
  "createdDateTime": "String (timestamp)",
  "contentType": "String",
  "category": "String",
  "source": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.security.submissionUserIdentity"
  },
  "status": "String",
  "result": {
    "@odata.type": "microsoft.graph.security.submissionResult"
  },
  "adminReview": {
    "@odata.type": "microsoft.graph.security.submissionAdminReview"
  },
  "clientSource": "String",
  "fileName": "String",
  "fileUrl": "String"
}
```

