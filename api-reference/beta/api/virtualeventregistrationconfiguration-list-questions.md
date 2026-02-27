---
title: "List questions"
description: "Get a list of all registration questions for a webinar."
author: "halleclottey-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 08/13/2024
---

# List questions
Namespace: microsoft.graph

Get a list of all [registration](../resources/virtualeventregistration.md) questions for a [webinar](../resources/virtualeventwebinar.md).

The list can include either [predefined registration questions](../resources/virtualeventregistrationpredefinedquestion.md) or [custom registration questions](../resources/virtualeventregistrationcustomquestion.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualeventregistrationconfiguration_list_questions" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventregistrationconfiguration-list-questions-permissions.md)]

> [!NOTE]
>
> To use application permissions for this API, tenant administrators must create an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy) and assign it to a user. This allows the authorized application to access registration records from virtual events created by that specific user.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /solutions/virtualEvents/webinars/{webinarId}/registrationConfiguration/questions
```

## Optional query parameters

This method does not support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md) or [virtualEventRegistrationPredefinedQuestion](../resources/virtualeventregistrationpredefinedquestion.md) objects, or both  in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_questions_virtualeventregistration"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/solutions/virtualEvents/webinars/f4b39f1c-520e-4e75-805a-4b0f2016a0c6@a1a56d21-a8a6-4a6b-97f8-ced53d30f143/registrationConfiguration/questions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-questions-virtualeventregistration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-questions-virtualeventregistration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-questions-virtualeventregistration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-questions-virtualeventregistration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-questions-virtualeventregistration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-questions-virtualeventregistration-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-questions-virtualeventregistration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.virtualEventRegistrationQuestionBase)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "@odata.type": "#microsoft.graph.virtualEventRegistrationPredefinedQuestion",
            "id": "630ce4da-6355-459e-81dc-541fd6b93375",
            "displayName": "Job title",
            "isRequired": true,
            "label": "jobTitle"
        },
        {
            "@odata.type": "#microsoft.graph.virtualEventRegistrationCustomQuestion",
            "id": "363dc852-452d-4e51-a1f8-a8dc72ce82cd",
            "displayName": "In what area do you work",
            "isRequired": false,
            "answerInputType": "text",
            "answerChoices": []
        },
        {
            "@odata.type": "#microsoft.graph.virtualEventRegistrationCustomQuestion",
            "id": "e4ef3e86-9137-4d24-8440-c674f1a3df7b",
            "displayName": "What is your primary reason for attending this webinar",
            "isRequired": true,
            "answerInputType": "singleChoice",
            "answerChoices": [
                "To gain knowledge on the topic",
                "To network with other professionals",
                "To earn continuing education credits"
            ]
        },
        {
            "@odata.type": "#microsoft.graph.virtualEventRegistrationCustomQuestion",
            "id": "e36b964f-2aed-43cf-a13e-2df4f8624652",
            "displayName": "Are you interested in webinars of the same topic in the future",
            "isRequired": true,
            "answerInputType": "boolean",
            "answerChoices": []
        }
    ]
}
```
<!-- {
  "type": "#page.annotation",
  "suppressions": [ 
      "Error: listquestionsvirtualeventregistration/container/answerInputType:
      Expected type String but actual was Boolean. Property: answerInputType, actual value: 'boolean'"
  ]
}-->
