---
title: "List questions"
description: "Get the virtualEventRegistrationQuestionBase resources from the questions navigation property."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# List questions

Namespace: microsoft.graph



Get the virtualEventRegistrationQuestionBase resources from the questions navigation property.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventwebinarregistrationconfiguration-list-questions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventwebinarregistrationconfiguration-list-questions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /virtualEventRegistrationConfiguration/questions
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

If successful, this method returns a `200 OK` response code and a collection of [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_virtualeventregistrationquestionbase"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/virtualEventRegistrationConfiguration/questions
```


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
      "@odata.type": "#microsoft.graph.virtualEventRegistrationQuestionBase",
      "id": "28ee9f01-a6f4-b37c-b2be-64f394e5e531",
      "displayName": "String",
      "isRequired": "Boolean"
    }
  ]
}
```

