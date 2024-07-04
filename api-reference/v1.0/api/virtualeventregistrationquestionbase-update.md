---
title: "Update virtualEventRegistrationQuestionBase"
description: "Update the properties of a virtualEventRegistrationQuestionBase object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update virtualEventRegistrationQuestionBase

Namespace: microsoft.graph



Update the properties of a [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventregistrationquestionbase-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventregistrationquestionbase-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /virtualEventRegistrationConfiguration/questions/{virtualEventRegistrationQuestionBaseId}
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
|displayName|String|**TODO: Add Description** Optional.|
|isRequired|Boolean|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_virtualeventregistrationquestionbase"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/virtualEventRegistrationConfiguration/questions/{virtualEventRegistrationQuestionBaseId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventRegistrationQuestionBase",
  "displayName": "String",
  "isRequired": "Boolean"
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
  "@odata.type": "#microsoft.graph.virtualEventRegistrationQuestionBase",
  "id": "28ee9f01-a6f4-b37c-b2be-64f394e5e531",
  "displayName": "String",
  "isRequired": "Boolean"
}
```

