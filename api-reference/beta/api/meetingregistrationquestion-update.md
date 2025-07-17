---
title: "Update meetingRegistrationQuestion"
description: "Update a custom meeting registration question associated with a meetingRegistration object."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 04/05/2024
---

# Update meetingRegistrationQuestion

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update a [custom registration question](../resources/meetingregistrationquestion.md) associated with a [meetingRegistration](../resources/meetingregistration.md) object on behalf of the organizer.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "meetingregistrationquestion_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/meetingregistrationquestion-update-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /me/onlineMeetings/{meetingId}/registration/customQuestions/{id}
```

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply only the properties that need to be updated in a JSON representation of a [meetingRegistrationQuestion](../resources/meetingregistrationquestion.md) object.

## Response

If successful, this method returns a `200 OK` response code and an updated [meetingRegistrationQuestion](../resources/meetingregistrationquestion.md) object in the response body.

## Example

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update-custom-question",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ", "MSNhYjc5NWI4MC119zX3gwMDIwX3lvdXJfeDAwMjBfam8="]
}-->

```http
PATCH https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration/customQuestions/MSNhYjc5NWI4MC119zX3gwMDIwX3lvdXJfeDAwMjBfam8=
Content-Type: application/json

{
  "answerInputType": "radioButton",
  "answerOptions": [
    "Software Engineer",
    "Software Development Manager",
    "Product Manager",
    "Data scientist",
    "Other"
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-custom-question-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-custom-question-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-custom-question-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-custom-question-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-custom-question-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-custom-question-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-custom-question-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-custom-question-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

> **Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "update-custom-question",
  "@odata.type": "microsoft.graph.meetingRegistrationQuestion"
}-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('16664f75-11dc-4870-bec6-38c1aaa81431')/onlineMeetings('MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ')/registration/customQuestions/$entity",
  "id": "MSNhYjc5NWI4MC119zX3gwMDIwX3lvdXJfeDAwMjBfam8=",
  "displayName": "What's your job position?",
  "isRequired": false,
  "answerInputType": "radioButton",
  "answerOptions": [
      "Software Engineer",
      "Software Development Manager",
      "Product Manager",
      "Data scientist",
      "Other"
  ]
}
```
