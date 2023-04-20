---
title: "List registrants"
description: "Get a list of the meetingRegistrants of an onlineMeeting."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# List registrants

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [meetingRegistrants](../resources/meetingregistrant.md) of an [onlineMeeting](../resources/onlinemeeting.md) on behalf of the organizer.

You can use this method to get the registration report for a [Microsoft Teams webinar](https://support.microsoft.com/office/get-started-with-teams-webinars-42f3f874-22dc-4289-b53f-bbc1a69013e3).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
|:----------------|:--------------------------------------------|
| Delegated (work or school account) | OnlineMeetings.Read, OnlineMeetings.ReadWrite |
| Delegated (personal Microsoft account) | Not supported. |
| Application | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/onlineMeetings/{id}/registration/registrants
```

## Optional query parameters

This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [meetingRegistrant](../resources/meetingRegistrant.md) objects in the response body. The **joinWebUrl** and **questionId** properties will be `null`.

## Example

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list-registratrants",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration/registrants
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-registratrants-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-registratrants-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

> **Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "list-registratrants",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.meetingRegistrant)"
}-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('16664f75-11dc-4870-bec6-38c1aaa81431')/onlineMeetings('MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ')/registration/registrants",
  "value": [
    {
      "id": "gWWckDBR6UOI8_yzWCzeNw,6pAAiSU1bkGqc8soJZw5Pg,3aMJxgQBxEufdo7_Qube_w,YgKy1Rtx-0SFjRbv-ww1ag,Cuzk8JP_iTTWqCOyVcalVA",
      "registrationDateTime": "2021-10-02T00:07:16.882602Z",
      "joinWebUrl": null,
      "firstName": "Frederick",
      "lastName": "Cormier",
      "email": "frederick.cormier@contoso.com",
      "status": "registered",
      "customQuestionAnswers": [
        {
          "questionId": null,
          "displayName": "Are you a developer?",
          "value": "Yes"
        },
        {
          "questionId": null,
          "displayName": "Where did you hear about us?",
          "value": "Company"
        }
      ]
    },
    {
      "id": "gWWckDBR6UOI8_yzWCzeNw,6pAAiSU1bkGqzLnbHG_muA,b0ezc8soJZw5Pg,3aMJxgQBxEufdo7_Qube_w,YgKy1Rtx-0SFjRbv-ww1ag,UwWARTlCT0dzO0jsuuq5EA",
      "registrationDateTime": "2021-10-02T00:08:49.1053222Z",
      "joinWebUrl": null,
      "firstName": "Lisa",
      "lastName": "Adkins",
      "email": "lisa.adkins@contoso.com",
      "status": "registered",
      "customQuestionAnswers": [
        {
          "questionId": null,
          "displayName": "Are you a developer?",
          "value": "No"
        },
        {
          "questionId": null,
          "displayName": "Where did you hear about us?",
          "value": ""
        }
      ]
    }
  ]
}
```
