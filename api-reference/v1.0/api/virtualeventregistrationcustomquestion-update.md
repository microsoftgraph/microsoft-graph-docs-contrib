---
title: "Update virtualEventRegistrationCustomQuestion"
description: "Update the properties of a virtualEventRegistrationCustomQuestion object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update virtualEventRegistrationCustomQuestion

Namespace: microsoft.graph



Update the properties of a [virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventregistrationcustomquestion-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventregistrationcustomquestion-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /virtualEventRegistrationCustomQuestion
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md). Optional.|
|isRequired|Boolean|**TODO: Add Description** Inherited from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md). Optional.|
|answerChoices|String collection|**TODO: Add Description** Optional.|
|answerInputType|virtualEventRegistrationQuestionAnswerInputType|**TODO: Add Description**. The possible values are: `text`, `multilineText`, `singleChoice`, `multiChoice`, `boolean`, `unknownFutureValue`. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_virtualeventregistrationcustomquestion"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/virtualEventRegistrationCustomQuestion
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventRegistrationCustomQuestion",
  "displayName": "String",
  "isRequired": "Boolean",
  "answerChoices": [
    "String"
  ],
  "answerInputType": "String"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventRegistrationCustomQuestion",
  "id": "c1f009e2-1dd2-7bbd-6065-16bcfe605b29",
  "displayName": "String",
  "isRequired": "Boolean",
  "answerChoices": [
    "String"
  ],
  "answerInputType": "String"
}
```

