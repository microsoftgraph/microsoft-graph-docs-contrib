---
title: "List actions (for an AWS authorization system)"
description: "List the awsAuthorizationSystemAction objects and their properties."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List actions (for an AWS authorization system)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the [awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md) objects and their properties.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "awsauthorizationsystem_list_actions" } -->
[!INCLUDE [permissions-table](../includes/permissions/awsauthorizationsystem-list-actions-permissions.md)]

<!--
[!INCLUDE [epm-rbac-servicenow-apis-read](../includes/rbac-for-apis/epm-rbac-servicenow-apis-read.md)]
-->

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/actions
```

## Optional query parameters
This method supports the `$select`, `$filter`, `$count`, `$top`, and `$skipToken` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md) objects in the response body.

## Examples

### Example 1: List all actions for an AWS authorization system

#### Request
The following example shows a request to retrieve all actions for an AWS authorization system.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_awsauthorizationsystemtypeaction"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/actions
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-awsauthorizationsystemtypeaction-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.awsAuthorizationSystemTypeAction)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{id}/actions",
  "value": [
    {
      "@odata.type": "graph.awsAuthorizationSystemTypeAction",
      "id": "ZWMyOkFjY2VwdFJlc2VydmVkSW5zdGFuY2VzRXhjaGFuZ2VRdW90ZQ==",
      "externalId": "ec2:AcceptReservedInstancesExchangeQuote",
      "resourceTypes": ["reserved-instances"],
      "severity": "high",
      "actionType": null,
      "service": {
        "id": "ec2"
      }
    },
    {
      "@odata.type": "graph.awsAuthorizationSystemTypeAction",
      "id": "ZWMyOkFsbG9jYXRlQWRkcmVzcw==",
      "externalId": "ec2:AllocateAddress",
      "resourceTypes": ["ipv4pool-ec2"],
      "severity": "normal",
      "actionType": null,
      "service": {
        "id": "ec2"
      }
    },
    {
      "@odata.type": "graph.awsAuthorizationSystemTypeAction",
      "id": "ZWMyOkRlbGV0ZVJvdXRl",
      "externalId": "ec2:DeleteRoute",
      "resourceTypes": ["route-table", "prefix-list"],
      "severity": "high",
      "actionType": "delete",
      "service": {
        "id": "ec2"
      }
    },
    {
      "@odata.type": "graph.awsAuthorizationSystemTypeAction",
      "id": "czM6QWJvcnRNdWx0aXBhcnRVcGxvYWQ=",
      "externalId": "s3:AbortMultipartUpload",
      "resourceTypes": ["object"],
      "severity": "normal",
      "actionType": null,
      "service": {
        "id": "s3"
      }
    },
    {
      "@odata.type": "graph.awsAuthorizationSystemTypeAction",
      "id": "czM6Q29tcGxldGVNdWx0aXBhcnRVcGxvYWQ=",
      "externalId": "s3:CompleteMultipartUpload",
      "resourceTypes": ["bucket"],
      "severity": "high",
      "actionType": null,
      "service": {
        "id": "s3"
      }
    },
    {
      "@odata.type": "graph.awsAuthorizationSystemTypeAction",
      "id": "czM6Q29weU9iamVjdA==",
      "externalId": "s3:CopyObject",
      "resourceTypes": ["bucket"],
      "severity": "high",
      "actionType": null,
      "service": {
        "id": "s3"
      }
    }
  ]
}
```

### Example 2: List actions for a specific service in an AWS authorization system

#### Request
The following example shows a request to retrieve the actions for an AWS authorization system where the service that the action is performed on is `ec2`.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_awsauthorizationsystemtypeaction2"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/actions?$filter=service/id eq 'ec2'
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-awsauthorizationsystemtypeaction2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.awsAuthorizationSystemTypeAction)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/actions?$filter=service/id eq 'ec2'",
  "value": [
    {
      "id": "ZWMyOkFjY2VwdFJlc2VydmVkSW5zdGFuY2VzRXhjaGFuZ2VRdW90ZQ==",
      "externalId": "ec2:AcceptReservedInstancesExchangeQuote",
      "resourceTypes": ["reserved-instances"],
      "severity": "high",
      "actionType": null,
      "service": {
        "id": "ec2"
      }
    },
    {
      "id": "ZWMyOkFsbG9jYXRlQWRkcmVzcw==",
      "externalId": "ec2:AllocateAddress",
      "resourceTypes": ["ipv4pool-ec2"],
      "severity": "normal",
      "actionType": null,
      "service": {
        "id": "ec2"
      }
    },
    {
      "id": "ZWMyOkRlbGV0ZVJvdXRl",
      "externalId": "ec2:DeleteRoute",
      "resourceTypes": ["route-table", "prefix-list"],
      "severity": "high",
      "actionType": "delete",
      "service": {
        "id": "ec2"
      }
    }
  ]
}
```

### Example 3: List high risk delete actions for a specific service in the AWS authorization system

#### Request
The following example shows a request that retrieves actions for an AWS authorization system where the service that the action is performed on is `ec2` and the action is a high risk delete action.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_awsauthorizationsystemtypeaction3"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/actions?$filter=service/id eq 'ec2' and severity eq 'high' and actionType eq 'delete'
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-awsauthorizationsystemtypeaction3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.awsAuthorizationSystemTypeAction)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/actions?$filter=service/id eq 'ec2' and severity eq 'high' and actionType eq 'delete'",
  "value": [
    {
      "id": "ZWMyOkRlbGV0ZUN1c3RvbWVyR2F0ZXdheQ==",
      "externalId": "ec2:DeleteCustomerGateway",
      "resourceTypes": ["customer-gateway"],
      "severity": "high",
      "actionType": "delete",
      "service": {
        "id": "ec2"
      }
    },
    {
      "id": "ZWMyOkRlbGV0ZVJvdXRl",
      "externalId": "ec2:DeleteRoute",
      "resourceTypes": ["route-table", "prefix-list"],
      "severity": "high",
      "actionType": "delete",
      "service": {
        "id": "ec2"
      }
    }
  ]
}
```

