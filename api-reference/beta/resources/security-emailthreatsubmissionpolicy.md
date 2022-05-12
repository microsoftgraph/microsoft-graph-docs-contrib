---
title: "emailThreatSubmissionPolicy resource type"
description: "**TODO: Add Description**"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# emailThreatSubmissionPolicy resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List emailThreatSubmissionPolicies](../api/security-threatsubmissionroot-list-emailthreatsubmissionpolicies.md)|[microsoft.graph.security.emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) collection|Get a list of the [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) objects and their properties.|
|[Create emailThreatSubmissionPolicy](../api/security-emailthreatsubmissionpolicy-post-emailthreatsubmissionpolicies.md)|[microsoft.graph.security.emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md)|Create a new [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) object.|
|[Get emailThreatSubmissionPolicy](../api/security-emailthreatsubmissionpolicy-get.md)|[microsoft.graph.security.emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md)|Read the properties and relationships of an [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) object.|
|[Update emailThreatSubmissionPolicy](../api/security-emailthreatsubmissionpolicy-update.md)|[microsoft.graph.security.emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md)|Update the properties of an [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) object.|
|[Delete emailThreatSubmissionPolicy](../api/security-threatsubmissionroot-delete-emailthreatsubmissionpolicies.md)|None|Deletes an [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|customizedNotificationSenderEmailAddress|String|**TODO: Add Description**|
|customizedReportRecipientEmailAddress|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isAlwaysReportEnabledForUsers|Boolean|**TODO: Add Description**|
|isAskMeEnabledForUsers|Boolean|**TODO: Add Description**|
|isCustomizedMessageEnabled|Boolean|**TODO: Add Description**|
|isCustomizedMessageEnabledForPhishing|Boolean|**TODO: Add Description**|
|isCustomizedNotificationSenderEnabled|Boolean|**TODO: Add Description**|
|isNeverReportEnabledForUsers|Boolean|**TODO: Add Description**|
|isOrganizationBrandingEnabled|Boolean|**TODO: Add Description**|
|isReportFromQuarantineEnabled|Boolean|**TODO: Add Description**|
|isReportToCustomizedEmailAddressEnabled|Boolean|**TODO: Add Description**|
|isReportToMicrosoftEnabled|Boolean|**TODO: Add Description**|
|isReviewEmailNotificationEnabled|Boolean|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.emailThreatSubmissionPolicy",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.emailThreatSubmissionPolicy",
  "id": "String (identifier)",
  "isReportToMicrosoftEnabled": "Boolean",
  "isReportToCustomizedEmailAddressEnabled": "Boolean",
  "isAskMeEnabledForUsers": "Boolean",
  "isAlwaysReportEnabledForUsers": "Boolean",
  "isNeverReportEnabledForUsers": "Boolean",
  "isCustomizedMessageEnabledForPhishing": "Boolean",
  "isCustomizedMessageEnabled": "Boolean",
  "customizedReportRecipientEmailAddress": "String",
  "isReviewEmailNotificationEnabled": "Boolean",
  "isCustomizedNotificationSenderEnabled": "Boolean",
  "isOrganizationBrandingEnabled": "Boolean",
  "customizedNotificationSenderEmailAddress": "String",
  "isReportFromQuarantineEnabled": "Boolean"
}
```

