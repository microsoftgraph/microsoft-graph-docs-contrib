---
title: "emailThreatSubmissionPolicy resource type"
description: "Represents the guidelines of an organization to report potential threats and spam."
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# emailThreatSubmissionPolicy resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the guidelines of an organization to report potential threats and spam. It is used for customizing your organization's end user threat submission experience when reporting potential threats and spam in Microsoft Outlook Client and OWA.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List emailThreatSubmissionPolicies](../api/security-emailthreatsubmissionpolicy-list.md)|[microsoft.graph.security.emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) collection|Get a list of the [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) objects and their properties.|
|[Create emailThreatSubmissionPolicy](../api/security-emailthreatsubmissionpolicy-post-emailthreatsubmissionpolicies.md)|[microsoft.graph.security.emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md)|Create a new [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) object.|
|[Get emailThreatSubmissionPolicy](../api/security-emailthreatsubmissionpolicy-get.md)|[microsoft.graph.security.emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md)|Read the properties and relationships of an [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) object.|
|[Update emailThreatSubmissionPolicy](../api/security-emailthreatsubmissionpolicy-update.md)|[microsoft.graph.security.emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md)|Update the properties of an [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) object.|
|[Delete emailThreatSubmissionPolicy](../api/security-emailthreatsubmissionpolicy-delete.md)|None|Deletes an [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) object.|

## Properties
| Property                                 | Type    | Description                                                                                |
|:-----------------------------------------|:--------|:-------------------------------------------------------------------------------------------|
| customizedNotificationSenderEmailAddress | String  | Customized notification sender address for review notification message. The default value is `null`. Optional for creation.                   |
| customizedReportRecipientEmailAddress    | String  | When customized address enabled, the message will be sent to this address. The default value is `null`. Optional for creation. |
| id                                       | String  | Policy id. Only 1 policy is supported by now. The default value is `DefaultReportSubmissionPolicy`. |
| isAlwaysReportEnabledForUsers            | Boolean | User could use 'Always report the message' option. The default value is `true`.  Optional for creation.          |
| isAskMeEnabledForUsers                   | Boolean | User could use 'Ask me before reporting the message' option. The default value is true. Optional for creation.   |
| isCustomizedMessageEnabled               | Boolean | If enabled, customized message is enabled. The default value is `false`. Optional for creation.                  |
| isCustomizedMessageEnabledForPhishing    | Boolean | If enabled, customized message only shows when email is reported as phishing. The default value is `false`. Optional for creation. |
| isCustomizedNotificationSenderEnabled    | Boolean | If enabled, notificationSenderAddress is used by review notification email. The default value is `false`. Optional for creation.               |
| isNeverReportEnabledForUsers             | Boolean | User could use 'Never report the message' option. The default value is `true`. Optional for creation.         |
| isOrganizationBrandingEnabled            | Boolean | If enabled, tenant branding logo will be used in review notification message. The default value is `false`. Optional for creation.        |
| isReportFromQuarantineEnabled            | Boolean | If enabled, submission could be created from security portal quarantine page. The default value is `true`. Optional for creation.              |
| isReportToCustomizedEmailAddressEnabled  | Boolean | If enabled, the email will be sent to customizedReportRecipientEmailAddress.  The default value is `false`. Optional for creation.              |
| isReportToMicrosoftEnabled               | Boolean | If enabled, the email will be sent to Microsoft for analysis. The default value is `false`. Requried for creation.  |
| isReviewEmailNotificationEnabled         | Boolean | If enabled, system sends email notification to reporter when admin reviews the submission. The default value is `false`. Optional for creation.  |

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

