---
title: "Delete virtualAppointment"
description: "Delete a virtualAppointment object."
author: "benmicrosoft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# Delete virtualAppointment (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!CAUTION]
> The **virtualAppointment** resource and supporting methods are deprecated and will stop returning data on June 30, 2023. We recommend that you update existing apps that use this API to use the new [Get join link](../api/virtualappointment-getvirtualappointmentjoinweburl.md) function.

Delete a [virtualAppointment](../resources/virtualappointment.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualappointment_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualappointment-delete-permissions.md)]

> [!NOTE]
> Virtual appointment will transition from online meeting permissions to more specific virtual appointment permissions during the preview period. This will give developers more granular control over virtual appointment permissions. We'll provide additional details on when online meeting permissions will no longer be supported before the preview period ends.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /me/onlineMeetings/{onlineMeetingId}/virtualAppointment
DELETE /users/{userId}/onlineMeetings/{onlineMeetingId}/virtualAppointment
```

## Request headers
| Name            | Description               |
| :-------------- | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Accept-Language | Language. Optional.       |

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_virtualappointment",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi"]
}
-->
``` http
DELETE https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi/virtualAppointment
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-virtualappointment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

