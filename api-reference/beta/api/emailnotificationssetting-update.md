---
title: "Update emailNotificationsSetting"
description: "Update the properties of an emailNotificationsSetting object."
author: "Vassu05"
ms.date: 05/29/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# Update emailNotificationsSetting

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [emailNotificationsSetting](../resources/emailnotificationssetting.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "emailnotificationssetting-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/emailnotificationssetting-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /solutions/backupRestore/emailNotificationsSetting
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|additionalEvents|notificationEventsType|Indicates whether to opt in to additional policy and restore updates. Possible values: `none`, `restoreAndPolicyUpdates`, `unknownFutureValue`.|
|isEnabled|Boolean|Indicates whether notifications are enabled.|
|recipients|[notificationRecipients](../resources/notificationrecipients.md)|A list of recipients who receive the notifications.|

## Response

If successful, this method returns a `200 OK` response code and an updated [emailNotificationsSetting](../resources/emailnotificationssetting.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_emailnotificationssetting"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/solutions/backupRestore/emailNotificationsSetting
Content-Type: application/json

{
  "isEnabled": "true",
  "additionalEvents": "restoreAndPolicyUpdates",
  "recipients": {
    "recipients": {
      "role": "custom",
      "customRecipients": [
        {
          "email": "amala@contoso.com"
        },
        {
          "email": "conrad@contoso.com"
        },
        {
          "email": "lothar@contoso.com"
        }
      ]
    }
  }
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.emailNotificationsSetting"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "isEnabled": true,
  "additionalEvents": "restoreAndPolicyUpdates",
  "recipients": {
    "recipients": {
      "role": "custom",
      "customRecipients": [
        {
          "email": "amala@contoso.com"
        },
        {
          "email": "conrad@contoso.com"
        },
        {
          "email": "lothar@contoso.com"
        }
      ]
    }
  }
}
```

