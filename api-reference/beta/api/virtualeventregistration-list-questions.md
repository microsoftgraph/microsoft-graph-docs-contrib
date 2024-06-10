---
title: "List virtualEventRegistration Questions"
description: "Get a list of all registration questions of a webinar."
author: "halleclottey-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# List virtualEventRegistration Questions
Namespace: microsoft.graph

Get a list of all [registration](../resources/virtualeventregistration.md) questions of a [webinar](../resources/virtualeventwebinar.md).

The list can include either [predefined registration questions](../resources/virtualEventRegistrationPredefinedQuestion.md) or [custom registration questions](../resources/virtualEventRegistrationCustomQuestion.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualeventregistration_list_questions" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventregistration-list-questions-permissions.md)]

> [!NOTE]
>
> To use application permissions for this API, tenant administrators must create an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy) and assign it to a user. This allows the authorized application to access registration records from virtual events created by that specific user.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
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

If successful, this method returns a `200 OK` response code and a collection of [virtualEventRegistrationCustomQuestion](../resources/virtualEventRegistrationCustomQuestion.md) and/or [virtualEventRegistrationPredefinedQuestion](../resources/virtualEventRegistrationPredefinedQuestion.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_questions_virtualeventregistration"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/virtualEvents/webinars/f4b39f1c-520e-4e75-805a-4b0f2016a0c6@a1a56d21-a8a6-4a6b-97f8-ced53d30f143/registrationConfiguration/questions
```

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
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.virtualEventRegistrationPredefinedQuestion",
      "id": "00ee391e-9a48-4b5a-9074-c7d75541bfbb",
      "label": "jobTitle"
      "displayName": "Job title",
      "isRequired": true
    },
    {
      "@odata.type": "#microsoft.graph.virtualEventRegistratioCustomQuestion",
      "id": "80917098-9535-4f84-ac92-c3deea2099fc",
      "displayName": "What's your job position?",
      "answerInputType": "multiChoice",
      "answerChoices": [
        "Software Engineer",
        "Engineer Manager",
        "Product Manager"
      ],
      "isRequired": false
    }
  ]
}
```
