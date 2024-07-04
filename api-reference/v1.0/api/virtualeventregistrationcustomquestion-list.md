---
title: "List virtualEventRegistrationCustomQuestion objects"
description: "Get a list of the virtualEventRegistrationCustomQuestion objects and their properties."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# List virtualEventRegistrationCustomQuestion objects

Namespace: microsoft.graph



Get a list of the [virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventregistrationcustomquestion-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventregistrationcustomquestion-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for microsoft.graph.virtualEventRegistrationCustomQuestion not found
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

If successful, this method returns a `200 OK` response code and a collection of [virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_virtualeventregistrationcustomquestion"
}
-->
``` http
GET https://graph.microsoft.com/v1.0** Collection URI for microsoft.graph.virtualEventRegistrationCustomQuestion not found
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.virtualEventRegistrationCustomQuestion)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
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
  ]
}
```

