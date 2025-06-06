---
title: "notificationRecipients resource type"
description: "Represent Recipients of Multi Admin Notifications"
author: "Vassu05"
ms.date: 05/29/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# notificationRecipients resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent Recipients of Multi Admin Notifications

## Properties
|Property|Type|Description|
|:---|:---|:---|
|customRecipients|[emailIdentity](../resources/backuprestore-emailidentity.md) collection|List of users or groups that recieve notifications|
|role|notificationRecipientsType|Represents whether the recipient type is an admin or a custom list. The possible values are: `none`, `globalAdmins`, `backupAdmins`, `custom`, `allAdmins`, `unknownFutureValue`.|

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
  "role": "String",
  "customRecipients": [
    {
      "@odata.type": "microsoft.graph.emailIdentity"
    }
  ]
}
```

