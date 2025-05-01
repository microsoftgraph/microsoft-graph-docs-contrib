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

This notification can take the form of an email notification, a policy tip displayed within an application, or both. It can also include options for users to override the policy. Inherits from [dlpActionInfo](../resources/dlpactioninfo.md).

## Properties

| Property                      | Type                                                                                   | Description                                                                                                                             |
| :---------------------------- | :------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------- |
| actionLastModifiedDateTime    | DateTimeOffset                                                                         | Timestamp when the notification action configuration was last modified.                                                               |
| emailText                     | String                                                                                 | The body text of the email notification sent to users.                                                                                |
| overrideOption                | [overrideOption](../resources/overrideoption.md)                                       | Specifies the override options available to the user (e.g., allow override with justification, allow false positive).                    |
| policyTip                     | String                                                                                 | The text of the policy tip displayed to the user within the application (e.g., Outlook, Word).                                       |
| recipients                    | String collection                                                                      | List of email addresses or user identifiers designated to receive the notification email. Can include sender, owner, manager, etc. |
|action                         |[microsoft.graph.dlpAction](../resources/dlpaction.md)                                  |The type of DLP action. The `action` property is typically set to `notifyUser`. Inherited properties from [dlpActionInfo](../resources/dlpactioninfo.md).|

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
  // Inherited properties from dlpActionInfo
  "action": "notifyUser",

  // notifyUserAction properties
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
