---
title: "Get virtualEventRegistrationConfiguration"
description: "Read the properties and relationships of a virtualEventRegistrationConfiguration object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get virtualEventRegistrationConfiguration

Namespace: microsoft.graph



Read the properties and relationships of a [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventregistrationconfiguration-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventregistrationconfiguration-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /virtualEventRegistrationConfiguration
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

If successful, this method returns a `200 OK` response code and a [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_virtualeventregistrationconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/virtualEventRegistrationConfiguration
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventRegistrationConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.virtualEventRegistrationConfiguration",
    "id": "e193a1ce-8ab0-6b93-3445-b0819e36466a",
    "registrationWebUrl": "String",
    "capacity": "Integer"
  }
}
```

