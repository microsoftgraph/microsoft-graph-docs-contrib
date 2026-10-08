---
title: "lifecyclePolicyNotificationSettings resource type"
description: "Represents the notification settings for a lifecycle policy, including when notifications are sent after an identity becomes non-compliant."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# lifecyclePolicyNotificationSettings resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the notification settings for a lifecycle policy, including when notifications are sent after an identity becomes non-compliant. This type is configured in the **notificationSchedule** property of a [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|additionalFallbackRecipients|String collection|The email addresses used when no targeted notification recipient has a valid email address. These addresses aren't copied on every notification or used alongside a valid targeted recipient.|
|offsetsAfterNonComplianceInDays|Int32 collection|The offsets, in days after an identity becomes non-compliant, at which notifications are sent.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicyNotificationSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicyNotificationSettings",
  "additionalFallbackRecipients": [
    "String"
  ],
  "offsetsAfterNonComplianceInDays": [
    "Integer"
  ]
}
```
