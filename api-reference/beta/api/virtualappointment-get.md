---
title: "Get virtualAppointment"
description: "Read the properties and relationships of a virtualAppointment object."
author: "benmicrosoft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# Get virtualAppointment (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!CAUTION]
> The **virtualAppointment** resource and supporting methods are deprecated and will stop returning data on June 30, 2023. We recommend that you update existing apps that use this API to use the new [Get join link](../api/virtualappointment-getvirtualappointmentjoinweburl.md) function.

Read the properties and relationships of a [virtualAppointment](../resources/virtualappointment.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualappointment_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualappointment-get-permissions.md)]

> [!NOTE]
> Virtual appointment will transition from online meeting permissions to more specific virtual appointment permissions during the preview period. This will give developers more granular control over virtual appointment permissions. We'll provide additional details on when online meeting permissions will no longer be supported before the preview period ends.


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/onlineMeetings/{onlineMeetingId}/virtualAppointment
GET /users/{userId}/onlineMeetings/{onlineMeetingId}/virtualAppointment
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Accept-Language | Language. Optional.       |

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [virtualAppointment](../resources/virtualappointment.md) object in the response body.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_virtualappointment",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi"]
}
-->
``` http
GET https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi/virtualAppointment
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-virtualappointment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualAppointment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
ETag: W/"ZfYdV7Meckeip07P//nwjAAADyI7NQ=="

{
    "value": {
        "@odata.type": "#microsoft.graph.virtualAppointment",
        "id": "0c7fda79-ff00-f57f-37e3-28183b6d09b5",
        "settings": {
            "@odata.type": "microsoft.graph.virtualAppointmentSettings",
            "allowClientToJoinUsingBrowser": "true"
        },
        "appointmentClients": [
            {
                "@odata.type": "microsoft.graph.virtualAppointmentUser",
                "emailAddress": "Grady Archie",
                "displayName": "gradya@contoso.com",
                "smsCapablePhoneNumber": "123-456-7890"
            }
        ],
        "externalAppointmentId": "AAMkADKnAAA=",
        "externalAppointmentUrl": "https://anyschedulingsystem.com/api/appointments/MkADKnAAA=",
        "appointmentClientJoinWebUrl": "https://visit.teams.microsoft.com/webrtc-svc/api/route?tid=a796be92-&convId=19:meeting_=True"
    }
}
```

