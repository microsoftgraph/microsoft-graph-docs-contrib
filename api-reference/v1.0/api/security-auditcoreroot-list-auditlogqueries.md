---
title: "List auditLogQueries"
description: "Get a list of the auditLogQuery objects and their properties."
author: "arishojaswi"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 10/29/2024
---

# List auditLogQueries
Namespace: microsoft.graph.security

Get a list of [auditLogQuery](../resources/security-auditlogquery.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Auditing data can be accessed through Microsoft Purview Audit Search API via the following permissions, which are classified at a Microsoft 365 service level. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_auditcoreroot_list_auditlogqueries" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-auditcoreroot-list-auditlogqueries-permissions.md)]


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /security/auditLog/queries
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

If successful, this method returns a `200 OK` response code and a collection of [auditLogQuery](../resources/security-auditlogquery.md) objects in the response body.

## Examples

### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_auditlogquery"
}
-->
```http
GET https://graph.microsoft.com/v1.0/security/auditLog/queries
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.auditLogQuery)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.auditLogQuery",
      "id": "168ec429-084b-a489-90d8-504a87846305",
      "displayName": "String",
      "filterStartDateTime": "String (timestamp)",
      "filterEndDateTime": "String (timestamp)",
      "recordTypeFilters": [
        "String"
      ],
      "keywordFilter": "String",
      "serviceFilter": "String",
      "operationFilters": [
        "String"
      ],
      "userPrincipalNameFilters": [
        "String"
      ],
      "ipAddressFilters": [
        "String"
      ],
      "objectIdFilters": [
        "String"
      ],
      "administrativeUnitIdFilters": [
        "String"
      ],
      "status": "String"
    }
  ]
}
```

