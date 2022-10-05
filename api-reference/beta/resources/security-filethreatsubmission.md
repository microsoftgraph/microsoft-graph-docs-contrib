---
title: "fileThreatSubmission resource type"
description: "Represents a threat submission related to a file."
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# fileThreatSubmission resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a threat submission related to a file. It is used to submit suspected malware email attachments to Microsoft Defender for Office 365. It could also be used to submit false positive cases which should not have been blocked by Microsoft Defender for Office 365, for example, a safe email attachment.

Currently, file threat submission is routed to Microsoft Defender for Office 365. In future, it may be routed to Microsoft Defender for Endpoint. This is a unified interface for file threat submission no matter where it is routed to.

This is an abstract type. Inherits from [threatSubmission](../resources/security-threatsubmission.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List fileThreatSubmissions](../api/security-filethreatsubmission-list.md)|[microsoft.graph.security.fileThreatSubmission](../resources/security-filethreatsubmission.md) collection|Get a list of the [fileThreatSubmission](../resources/security-filethreatsubmission.md) objects and their properties.|
|[Create fileThreatSubmission](../api/security-filethreatsubmission-post-filethreats.md)|[microsoft.graph.security.fileThreatSubmission](../resources/security-filethreatsubmission.md)|Create a new [fileThreatSubmission](../resources/security-filethreatsubmission.md) object.|
|[Get fileThreatSubmission](../api/security-filethreatsubmission-get.md)|[microsoft.graph.security.fileThreatSubmission](../resources/security-filethreatsubmission.md)|Read the properties and relationships of a [fileThreatSubmission](../resources/security-filethreatsubmission.md) object.|

## Properties
| Property | Type   | Description                    |
|:---------|:-------|:-------------------------------|
| fileName | String | It specifies the file name to be submitted. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.fileThreatSubmission",
  "baseType": "microsoft.graph.security.threatSubmission",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.fileThreatSubmission",
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
  "fileName": "String"
}
```

