---
title: "Create virtualEventRegistrationCustomQuestion"
description: "Create a registration question for a webinar."
author: "halleclottey-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 08/13/2024
---

# Create virtualEventRegistrationCustomQuestion
Namespace: microsoft.graph

Create a [registration question](../resources/virtualeventregistrationquestionbase.md) for a [webinar](../resources/virtualeventwebinar.md).

You can create either a [predefined registration question](../resources/virtualeventregistrationpredefinedquestion.md) or a [custom registration question](../resources/virtualeventregistrationcustomquestion.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualeventregistration_post_question" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventregistrationconfiguration-post-questions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /solutions/virtualEvents/webinars/{webinarId}/registrationConfiguration/questions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of etiher a [virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md) or a [virtualEventRegistrationPredefinedQuestion](../resources/virtualEventRegistrationPredefinedQuestion.md) object.

You can specify the following properties when you create a **virtualEventRegistrationCustomQuestion**.

|Property|Type|Description|
|:---|:---|:---|
|answerChoices|String collection|Answer choices when **answerInputType** is `singleChoice` or `multiChoice`. |
|answerInputType|virtualEventRegistrationQuestionAnswerInputType|Input type of the registration question answer. The supported values are `text`, `multilineText`, `singleChoice`, `multiChoice`, `boolean`, and `unknownFutureValue`.|
|displayName|String|Display name of the registration question.|
|isRequired|Boolean| Indicates whether an answer to the question is required. Default value is `false`.|

You can specify the following property when you create a **virtualEventRegistrationPredefinedQuestion**.

|Property|Type|Description|
|:---|:---|:---|
|label|virtualEventRegistrationPredefinedQuestionLabel|Label of the predefined registration question. The following label values accept a single line  of text: `street`, `city`, `state`, `postalCode`, `countryOrRegion`, `industry`, `jobTitle`, `organization`, and `unknownFutureValue`. |

## Response

If successful, this method returns a `201 Created` response code and either a [virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md) or [virtualEventRegistrationPredefinedQuestion](../resources/virtualEventRegistrationPredefinedQuestion.md) object in the response body.

## Examples

### Example 1: Add a custom registration question to a webinar registration

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_custom_question_virtualeventregistration"
}
-->
```http
POST https://graph.microsoft.com/v1.0/solutions/virtualEvents/webinars/f4b39f1c-520e-4e75-805a-4b0f2016a0c6@a1a56d21-a8a6-4a6b-97f8-ced53d30f143/registrationConfiguration/questions
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventRegistrationCustomQuestion",
  "displayName": "What's your job position?",
  "answerInputType": "multiChoice",
  "answerChoices": [
    "Software Engineer",
    "Engineer Manager",
    "Product Manager"
  ],
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-custom-question-virtualeventregistration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-custom-question-virtualeventregistration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-custom-question-virtualeventregistration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-custom-question-virtualeventregistration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-custom-question-virtualeventregistration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-custom-question-virtualeventregistration-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/post-custom-question-virtualeventregistration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

---

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventRegistrationCustomQuestion"
}
-->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventRegistrationCustomQuestion",
  "id": "f3115d4c-9896-42fc-a649-8ca5e3c3a43f",
  "displayName": "What's your job position?",
  "answerInputType": "multiChoice",
  "answerChoices": [
    "Software Engineer",
    "Engineer Manager",
    "Product Manager"
  ],
  "isRequired": false
}
```

### Example 2: Add a predefined registration question to a webinar registration

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_predefined_question_virtualeventregistration"
}
-->
```http
POST https://graph.microsoft.com/v1.0/solutions/virtualEvents/webinars/f4b39f1c-520e-4e75-805a-4b0f2016a0c6@a1a56d21-a8a6-4a6b-97f8-ced53d30f143/registrationConfiguration/questions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-predefined-question-virtualeventregistration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-predefined-question-virtualeventregistration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-predefined-question-virtualeventregistration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-predefined-question-virtualeventregistration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-predefined-question-virtualeventregistration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-predefined-question-virtualeventregistration-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/post-predefined-question-virtualeventregistration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

---

```http
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventRegistrationPredefinedQuestion",
  "label": "street"
}
```


#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventRegistrationPredefinedQuestion"
}
-->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventRegistrationPredefinedQuestion",
  "id": "7a852983-013a-4062-9e97-f784c6a57ec8",
  "label": "street",
  "displayName": "Address",
  "isRequired": false
}
```

