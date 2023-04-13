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

Represents the guidelines of an organization to report potential threats and spam messages. It is used for customizing your organization's end user threat submission experience when reporting potential threats and spam in Microsoft Outlook.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List emailThreatSubmissionPolicies](../api/security-emailthreatsubmissionpolicy-list.md)|[microsoft.graph.security.emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) collection|Get a list of the [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) objects and their properties.|
|[Create emailThreatSubmissionPolicy](../api/security-emailthreatsubmissionpolicy-post-emailthreatsubmissionpolicies.md)|[microsoft.graph.security.emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md)|Create a new [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) object.|
|[Get emailThreatSubmissionPolicy](../api/security-emailthreatsubmissionpolicy-get.md)|[microsoft.graph.security.emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md)|Read the properties and relationships of an [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) object.|
|[Update emailThreatSubmissionPolicy](../api/security-emailthreatsubmissionpolicy-update.md)|None|Update the properties of an [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) object.|
|[Delete emailThreatSubmissionPolicy](../api/security-emailthreatsubmissionpolicy-delete.md)|None|Deletes an [emailThreatSubmissionPolicy](../resources/security-emailthreatsubmissionpolicy.md) object.|

## Properties
| Property                                 | Type    | Description                                                                                |
|:-----------------------------------------|:--------|:-------------------------------------------------------------------------------------------|
| customizedNotificationSenderEmailAddress | String  | Specifies the email address of the sender from which email notifications will be sent to end users to inform them whether an email is spam, phish or clean. The default value is `null`. Optional for creation.                   |
| customizedReportRecipientEmailAddress    | String  | Specifies the destination where the reported messages from end users will land whenever they report something as phish, junk or not junk. The default value is `null`. Optional for creation. |
| id                                       | String  | Only one id is supported. The default value is `DefaultReportSubmissionPolicy`. |
| isAlwaysReportEnabledForUsers            | Boolean | Indicates whether end users can report a message as spam, phish or junk directly without a confirmation(popup). The default value is `true`.  Optional for creation.          |
| isAskMeEnabledForUsers                   | Boolean | Indicates whether end users can confirm using a popup before reporting messages as spam, phish or not junk. The default value is `true`.  Optional for creation.   |
| isCustomizedMessageEnabled               | Boolean | Indicates whether the email notifications sent to end users to inform them if an email is phish, spam or junk is customized or not. The default value is `false`. Optional for creation.    |
| isCustomizedMessageEnabledForPhishing    | Boolean | If enabled, customized message only shows when email is reported as phishing. The default value is `false`. Optional for creation. |
| isCustomizedNotificationSenderEnabled    | Boolean | Indicates whether to use the sender email address set using customizedNotificationSenderEmailAddress for sending email notifications to end users. The default value is `false`. Optional for creation.  |
| isNeverReportEnabledForUsers             | Boolean | Indicates whether end users can simply move the message from one folder to another based on the action of spam, phish or not junk without actually reporting it. The default value is `true`. Optional for creation.         |
| isOrganizationBrandingEnabled            | Boolean | Indicates whether the branding logo should be used in the email notifications sent to end users. The default value is `false`. Optional for creation.        |
| isReportFromQuarantineEnabled            | Boolean | Indicates whether end users can submit from the quarantine page. The default value is `true`. Optional for creation.  |
| isReportToCustomizedEmailAddressEnabled  | Boolean | Indicates whether emails reported by end users should be send to the custom mailbox configured using customizedReportRecipientEmailAddress.  The default value is `false`. Optional for creation.              |
| isReportToMicrosoftEnabled               | Boolean | If enabled, the email will be sent to Microsoft for analysis. The default value is `false`. Required for creation.  |
| isReviewEmailNotificationEnabled         | Boolean | Indicates whether an email notification is sent to the end user who reported the email when it has been reviewed by the admin. The default value is `false`. Optional for creation.  |

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

