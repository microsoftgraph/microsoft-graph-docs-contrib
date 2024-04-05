---
title: "Get awsAuthorizationSystemResource"
description: "Read the properties and relationships of an awsAuthorizationSystemResource object for a provided AWS authorization system."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get awsAuthorizationSystemResource
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) object for a provided AWS authorization system.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "awsauthorizationsystemresource_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/awsauthorizationsystemresource-get-permissions.md)]

<!--
[!INCLUDE [epm-rbac-servicenow-apis-read](../includes/rbac-for-apis/epm-rbac-servicenow-apis-read.md)]
-->

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/resources/{resourceId}
GET /external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/resources(externalId={externalId})
```

## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) object in the response body.

## Examples

### Request
The following example shows a request to get an AWS resource for a provided AWS authorization system.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_awsauthorizationsystemresource"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/resources/YXJuOmF3czpzMzo6OnRlc3RidWNrZXQ
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-awsauthorizationsystemresource-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.awsAuthorizationSystemResource"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{id}/resources",
  "value": [
    {
      "id": "YXJuOmF3czpzMzo6OnRlc3RidWNrZXQ",
      "externalId": "arn:aws:s3:::testbucket",
      "displayName": "testbucket",
      "resourceType": "bucket",
      "service": {
        "id": "s3"
      }
    }
  ]
}
```
