---
title: "notifyUserAction resource type"
description: "Represents a Data Loss Prevention (DLP) action that involves notifying users about a policy match."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# notifyUserAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Data Loss Prevention (DLP) action that involves notifying users about a policy match.

Inherits from [dlpActionInfo](../resources/dlpactioninfo.md).

## Properties

| Property                      | Type                                                                                   | Description                                                                                                                             |
| :---------------------------- | :------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------- |
|action|microsoft.graph.security.dlpAction|The type of DLP action. Possible values are `notifyUser`, `blockAccess`, `restrictAccess`, `generateAlert`, `generateIncidentReportAction`, `sPBlockAnonymousAccess`, `sPRuntimeAccessControl`, `sPSharingNotifyUser`, and `sPSharingGenerateIncidentReport`.  Inherited from [dlpActionInfo](../resources/dlpactioninfo.md).|
| actionLastModifiedDateTime    | DateTimeOffset                                                                         | Timestamp when the notification action configuration was last modified.                                                               |
| emailText                     | String                                                                                 | The body text of the email notification sent to users.                                                                                |
| overrideOption                | microsoft.graph.security.overrideOption                                                         | Specifies the override options available to the user. Possible values are `notAllowed`, `allowFalsePositiveOverride`, `allowWithJustification`, `allowWithoutJustification`, and `allowWithAcknowledgement`. |
| policyTip                     | String                                                                                 | The text of the policy tip displayed to the user within the application (For example, Outlook, Word).                                       |
| recipients                    | String collection                                                                      | List of email addresses or user identifiers designated to receive the notification email. Can include sender, owner, manager, etc. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.notifyUserAction",
  "baseType": "microsoft.graph.dlpActionInfo",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.notifyUserAction",
  "action": "notifyUser",

  "recipients": [
    "String"
  ],
  "actionLastModifiedDateTime": "String (timestamp)",
  "overrideOption": "String",
  "emailText": "String",
  "policyTip": "String",
  "policyTipUrl": "String",
  "isPolicyTipShownAsDialog": "Boolean",
  "customizedPolicyTipDialogText": "String"
}
```
