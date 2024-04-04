---
title: "List customQuestions"
description: "Get a list of the custom registration questions associated with a meetingRegistration object."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.topic: reference
---

# List customQuestions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [custom registration questions](../resources/meetingregistrationquestion.md) associated with a [meetingRegistration](../resources/meetingregistration.md) object on behalf of the organizer.

> [!TIP]
> You can also use the [Get meetingRegistration](meetingregistration-get.md) operation to get custom registration questions.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "meetingregistration_list_customquestions" } -->
[!INCLUDE [permissions-table](../includes/permissions/meetingregistration-list-customquestions-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/onlineMeetings/{id}/registration/microsoft.graph.meetingRegistration/customQuestions
```

> [!TIP]
> To access `/customQuestions`, follow the [example](#example) to cast the type of **registration** to **meetingRegistration**.

## Optional query parameters

This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [meetingRegistrationQuestion](../resources/meetingregistrationquestion.md) objects in the response body.

## Example

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list-custom-questions",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration/microsoft.graph.meetingRegistration/customQuestions
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-custom-questions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

> **Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "list-custom-questions",
  "@odata.type": "Collection(microsoft.graph.meetingRegistrationQuestion)"
}-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('16664f75-11dc-4870-bec6-38c1aaa81431')/onlineMeetings('MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ')/registration/microsoft.graph.meetingRegistration/customQuestions",
  "value": [
    {
      "id": "MSMxY2E2ZmE3OS1hOTY3LTQ4ZX3lvdV94MDAyMF9hX3gwMDIwX2RldmU=",
      "displayName": "Are you a developer?",
      "isRequired": true,
      "answerInputType": "radioButton",
      "answerOptions": [
        "Yes",
        "No"
      ]
    },
    {
      "id": "MSM4YzZhMTkTQjV2hlcmVfeDAwMjBfZGlkX3gwMDIwX3lvdV94MDAyMF8=",
      "displayName": "Where did you hear about us?",
      "isRequired": false,
      "answerInputType": "text",
      "answerOptions": []
    }
  ]
}
```
