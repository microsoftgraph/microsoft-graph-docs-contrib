---
title: "urlThreatSubmission resource type"
description: "Represent a threat submission related to a URL"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# urlThreatSubmission resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent a threat submission related to a URL.

This resource is used to submit suspected phishing URLs to Microsoft Defender for Office 365. It can also be used to submit false positive cases that should not have been blocked, such as safe URLs.

Inherits from [threatSubmission](../resources/security-threatsubmission.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List urlThreatSubmissions](../api/security-urlthreatsubmission-list.md)|[microsoft.graph.security.urlThreatSubmission](../resources/security-urlthreatsubmission.md) collection|Get a list of the [urlThreatSubmission](../resources/security-urlthreatsubmission.md) objects and their properties.|
|[Create urlThreatSubmission](../api/security-urlthreatsubmission-post-urlthreats.md)|[microsoft.graph.security.urlThreatSubmission](../resources/security-urlthreatsubmission.md)|Create a new [urlThreatSubmission](../resources/security-urlthreatsubmission.md) object.|
|[Get urlThreatSubmission](../api/security-urlthreatsubmission-get.md)|[microsoft.graph.security.urlThreatSubmission](../resources/security-urlthreatsubmission.md)|Read the properties and relationships of an [urlThreatSubmission](../resources/security-urlthreatsubmission.md) object.|

## Properties
| Property | Type   | Description                 |
|:---------|:-------|:----------------------------|
| webUrl   | String | Denotes the webUrl that needs to be submitted. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.urlThreatSubmission",
  "baseType": "microsoft.graph.security.threatSubmission",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.urlThreatSubmission",
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
  "webUrl": "String"
}
```

