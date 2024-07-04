---
title: "Get virtualEventRegistrationQuestionBase"
description: "Read the properties and relationships of a virtualEventRegistrationQuestionBase object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get virtualEventRegistrationQuestionBase

Namespace: microsoft.graph



Read the properties and relationships of a [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventregistrationquestionbase-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventregistrationquestionbase-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /virtualEventRegistrationConfiguration/questions/{virtualEventRegistrationQuestionBaseId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_virtualeventregistrationquestionbase"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/virtualEventRegistrationConfiguration/questions/{virtualEventRegistrationQuestionBaseId}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventRegistrationQuestionBase"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.virtualEventRegistrationQuestionBase",
    "id": "28ee9f01-a6f4-b37c-b2be-64f394e5e531",
    "displayName": "String",
    "isRequired": "Boolean"
  }
}
```

