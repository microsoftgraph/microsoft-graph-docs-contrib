---
title: "List externalMeetingRegistrants"
description: "Get a list of the externalMeetingRegistrants of an onlineMeeting."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# List externalMeetingRegistrants

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [externalMeetingRegistrants](../resources/externalmeetingregistrant.md) of an [onlineMeeting](../resources/onlinemeeting.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
|:----------------|:--------------------------------------------|
| Delegated (work or school account) | OnlineMeetings.ReadWrite |
| Delegated (personal Microsoft account) | Not supported. |
| Application | OnlineMeetings.ReadWrite.All |

To use application permission for this API, tenant administrators must create an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy) and grant it to a user to authorize the app configured in the policy to fetch online meetings and/or online meeting artifacts on behalf of that user (with user ID specified in the request path).

## HTTP request

To get a list of all external meeting registrants with delegated (`/me`) and app (`/users/{userId}/`) permission:

<!-- { "blockType": "ignored" } -->
```http
GET /me/onlineMeetings/{meetingId}/registration/registrants
GET /users/{userId}/onlineMeetings/{meetingId}/registration/registrants
```

> [!TIP]
>
>- `userId` is the **objectId** of the meeting organizer.
>- `meetingId` is the **id** of the [onlineMeeting](../resources/onlinemeeting.md) object.

## Optional query parameters

This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [externalMeetingRegistrant](../resources/externalmeetingregistrant.md) objects in the response body. The **joinWebUrl** property will be `null`.

## Example

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list-externalregistratrants",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration/registrants
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-externalregistratrants-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-externalregistratrants-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

> **Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "list-externalregistratrants",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalMeetingRegistrant",
  "isCollection": true
}-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('16664f75-11dc-4870-bec6-38c1aaa81431')/onlineMeetings('MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ')/registration/registrants",
  "value": [
    {
        "@odata.type": "#microsoft.graph.externalMeetingRegistrant",
        "id": "30494ab7-7338-4592-bfec-a4333be2a0a6",
        "joinWebUrl": null,
        "userId": null,
        "tenantId": null
    },
    {
        "@odata.type": "#microsoft.graph.externalMeetingRegistrant",
        "id": "e264916d-f65d-48ec-9c04-c2107fd5b61f",
        "joinWebUrl": null,
        "userId": null,
        "tenantId": null
    }
  ]
}
```
