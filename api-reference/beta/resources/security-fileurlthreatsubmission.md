---
title: "fileUrlThreatSubmission resource type"
description: "Represents file threat submission which is submitted by file url"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# fileUrlThreatSubmission resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents file threat submission object which is created when submission is made using file URL. It is a reserved api and not supported as of today.


Inherits from [fileThreatSubmission](../resources/security-filethreatsubmission.md).

## Properties
| Property | Type   | Description                   |
|:---------|:-------|:------------------------------|
| fileUrl  | String | The file url to be submitted. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

