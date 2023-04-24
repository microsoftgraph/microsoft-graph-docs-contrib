---
title: "Get virtualAppointment"
description: "Read the properties and relationships of a virtualAppointment object."
author: "benmicrosoft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Get virtualAppointment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!CAUTION]
  > The Virtual appointment resource and supporting methods are deprecated and will stop returning data on May 31, 2023. We recommend that you update existing apps that use this API to use the new [Get Virtual appointment join link](../api/virtualappointment-getvirtualappointmentjoinweburl.md) function.

Read the properties and relationships of a [virtualAppointment](../resources/virtualappointment.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                            |
|:---------------------------------------|:---------------------------------------------------------------------------------------|
| Delegated (work or school account)     | VirtualAppointment.ReadWrite, VirtualAppointment.Read, OnlineMeetings.ReadWrite, OnlineMeetings.Read                                  |
| Delegated (personal Microsoft account) | Not supported.                                                                         |
| Application                            | VirtualAppointment.ReadWrite.All, VirtualAppointment.Read.All

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
| Authorization   | Bearer {token}. Required. |
| Accept-Language | Language. Optional.       |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [virtualAppointment](../resources/virtualappointment.md) object in the response body.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_virtualappointment",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi"]
}
-->
``` http
GET https://graph.microsoft.com/beta/me/onlineMeeting/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi/virtualAppointment
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-virtualappointment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-virtualappointment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
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

