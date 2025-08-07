---
title: "notificationRecipients resource type"
description: "Represents the recipients of multi-admin notifications."
author: "Vassu05"
ms.date: 05/29/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# notificationRecipients resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the recipients of multi-admin notifications.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|customRecipients|[emailIdentity](../resources/emailidentity.md) collection|A list of users or groups that receive notifications. Only specify this property when **role** is set to `custom`. |
|role|notificationRecipientsType|Indicates whether the recipient type is an admin role or a custom list. The possible values are: `none`, `globalAdmins`, `backupAdmins`, `custom`, `allAdmins`, `unknownFutureValue`. The default value is `custom`. This property is read-only for third-party partners. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.notificationRecipients"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.notificationRecipients",
  "customRecipients": [{"@odata.type": "microsoft.graph.emailIdentity"}],
  "role": "String"
}
```
