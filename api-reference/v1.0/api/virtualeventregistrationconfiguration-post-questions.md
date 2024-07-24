---
title: "Create question"
description: "Create a registration question for a webinar."
author: "halleclottey-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# Create question
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
``` http
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
|answerInputType|[virtualEventRegistrationQuestionAnswerInputType](../resources/enums.md#virtualeventregistrationquestionanswerinputtype-values)|Input type of the registration question answer. The supported values are `text`, `multilineText`, `singleChoice`, `multiChoice`, and `boolean`.|
|displayName|String|Display name of the registration question.|
|isRequired|Boolean| Indicates whether an answer to the question is required. Default value is `false`.|

You can specify the following property when you create a **virtualEventRegistrationPredefinedQuestion**.

|Property|Type|Description|
|:---|:---|:---|
|label|[virtualEventRegistrationPredefinedQuestionLabel](../resources/enums.md#virtualeventregistrationpredefinedquestionlabel-values)|Label of the predefined registration question. The following label values accept a single line  of text: `street`, `city`, `state`, `postalCode`, `countryOrRegion`, `industry`, `jobTitle`, and `organization`. |

## Response

If successful, this method returns a `201 Created` response code and either a [virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md) or [virtualEventRegistrationPredefinedQuestion](../resources/virtualEventRegistrationPredefinedQuestion.md) object in the response body.

## Examples

### Example 1: Add a custom registration question to a webinar registration

#### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "post_custom_question_virtualeventregistration"
}
-->
``` http
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

<!-- {
  "blockType": "request",
  "name": "post_predefined_question_virtualeventregistration"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/solutions/virtualEvents/webinars/f4b39f1c-520e-4e75-805a-4b0f2016a0c6@a1a56d21-a8a6-4a6b-97f8-ced53d30f143/registrationConfiguration/questions
```

---

``` http
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

