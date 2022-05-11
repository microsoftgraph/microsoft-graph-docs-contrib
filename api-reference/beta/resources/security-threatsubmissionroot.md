---
title: "threatSubmissionRoot resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# threatSubmissionRoot resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get threatSubmissionRoot](../api/security-threatsubmissionroot-get.md)|[microsoft.graph.security.threatSubmissionRoot](../resources/security-threatsubmissionroot.md)|Read the properties and relationships of a [threatSubmissionRoot](../resources/security-threatsubmissionroot.md) object.|
|[Update threatSubmissionRoot](../api/security-threatsubmissionroot-update.md)|[microsoft.graph.security.threatSubmissionRoot](../resources/security-threatsubmissionroot.md)|Update the properties of a [threatSubmissionRoot](../resources/security-threatsubmissionroot.md) object.|
|[List emailThreats](../api/security-threatsubmissionroot-list-emailthreats.md)|[microsoft.graph.security.emailThreatSubmission](../resources/security-emailthreatsubmission.md) collection|Get the emailThreatSubmission resources from the emailThreats navigation property.|
|[Create emailThreatSubmission](../api/security-threatsubmissionroot-post-emailthreats.md)|[microsoft.graph.security.emailThreatSubmission](../resources/security-emailthreatsubmission.md)|Create a new emailThreatSubmission object.|
|[List emailThreatSubmissionPolicies](../api/security-threatsubmissionroot-list-emailthreatsubmissionpolicies.md)|[microsoft.graph.security.emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) collection|Get the emailThreatSubmissionPolicy resources from the emailThreatSubmissionPolicies navigation property.|
|[Create emailThreatSubmissionPolicy](../api/security-threatsubmissionroot-post-emailthreatsubmissionpolicies.md)|[microsoft.graph.security.emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md)|Create a new emailThreatSubmissionPolicy object.|
|[List fileThreats](../api/security-threatsubmissionroot-list-filethreats.md)|[microsoft.graph.security.fileThreatSubmission](../resources/security-filethreatsubmission.md) collection|Get the fileThreatSubmission resources from the fileThreats navigation property.|
|[Create fileThreatSubmission](../api/security-threatsubmissionroot-post-filethreats.md)|[microsoft.graph.security.fileThreatSubmission](../resources/security-filethreatsubmission.md)|Create a new fileThreatSubmission object.|
|[List urlThreats](../api/security-threatsubmissionroot-list-urlthreats.md)|[microsoft.graph.security.urlThreatSubmission](../resources/security-urlthreatsubmission.md) collection|Get the urlThreatSubmission resources from the urlThreats navigation property.|
|[Create urlThreatSubmission](../api/security-threatsubmissionroot-post-urlthreats.md)|[microsoft.graph.security.urlThreatSubmission](../resources/security-urlthreatsubmission.md)|Create a new urlThreatSubmission object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|emailThreats|[microsoft.graph.security.emailThreatSubmission](../resources/security-emailthreatsubmission.md) collection|**TODO: Add Description**|
|emailThreatSubmissionPolicies|[microsoft.graph.security.emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) collection|**TODO: Add Description**|
|fileThreats|[microsoft.graph.security.fileThreatSubmission](../resources/security-filethreatsubmission.md) collection|**TODO: Add Description**|
|urlThreats|[microsoft.graph.security.urlThreatSubmission](../resources/security-urlthreatsubmission.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.threatSubmissionRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.threatSubmissionRoot",
  "id": "String (identifier)"
}
```

