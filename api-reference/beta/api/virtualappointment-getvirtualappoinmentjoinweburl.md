---
title: "virtualAppointment: getVirtualAppointmentJoinWebURL"
description: "Function to return virtualAppointment join link."
author: "benmicrosoft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# virtualAppointment: getVirtualAppointmentJoinWebURL

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This function returns a web URL join link for [Microsoft Virtual Appointments](https://learn.microsoft.com/en-us/microsoft-365/frontline/virtual-appointments?view=o365-worldwide).

> [!NOTE]
> For the preview period, customers with access to virtual appointments with their Microsoft 365 licenses benefit from unlimited virtual appointment calls via the Microsoft Graph API. We'll provide additional details on the licensing requirements before the preview period ends.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                            |
|:---------------------------------------|:---------------------------------------------------------------------------------------|
| Delegated (work or school account)     | VirtualAppointment.Read, VirtualAppointment.ReadWrite, OnlineMeetings.Read, OnlineMeetings.ReadWrite                                  |
| Delegated (personal Microsoft account) | Not supported.                                                                         |
| Application                            | VirtualAppointment.Read.All, VirtualAppointment.ReadWrite.All

> [!NOTE]
> When this API is made generally available later this year, Virtual appointment will transition to requiring virtual appointment permissions and no longer accept online meeting permissions. This will give developers more granular control over virtual appointment permissions.


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/onlineMeetings/{onlineMeetingId}/getVirtualAppointmentJoinWebUrl
GET /users/{userId}/onlineMeetings/{onlineMeetingId}/getVirtualAppointmentJoinWebUurl
```

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |
| Accept-Language | Language. Optional.       |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a String in the response body. The value field represents the web URL join link for [Microsoft Virtual Appointments](https://learn.microsoft.com/en-us/microsoft-365/frontline/virtual-appointments?view=o365-worldwide).

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
GET https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi/getVirtualAppointmentJoinWebUrl
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-virtualappointment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-virtualappointment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-virtualappointment-java-snippets.md)]
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

{ "value": "https://visit.teams.microsoft.com/webrtc-svc/api/route?tid=a796be92-&convId=19:meeting_=True" }
```
