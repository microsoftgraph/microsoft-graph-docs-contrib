---
title: "List policies (for an AWS authorization system)"
description: "List all awsPolicy objects and their properties for a specific AWS authorization system."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: apiPageType
---

# List policies (for an AWS authorization system)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all [awsPolicy](../resources/awspolicy.md) objects and their properties for a specific AWS authorization system. An AWS policy is an object in AWS that defines the permissions of the associated entity or resource. When a principal, such as a user, makes a request, the policies and their associated permissions determine whether the request is allowed or denied.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "awsauthorizationsystem_list_policies" } -->
[!INCLUDE [permissions-table](../includes/permissions/awsauthorizationsystem-list-policies-permissions.md)]

<!--
[!INCLUDE [epm-rbac-servicenow-apis-read](../includes/rbac-for-apis/epm-rbac-servicenow-apis-read.md)]
-->

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies
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

If successful, this method returns a `200 OK` response code and a collection of [awsPolicy](../resources/awspolicy.md) objects in the response body.

## Examples

### Example 1: List all policies for an AWS account

#### Request

The following request lists all the policies for an AWS authorization system.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_awspolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-awspolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.awsPolicy)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies",
  "value": [
    {
      "id": "YXJuOmF3czppYW06OmF3czpwb2xpY3kvQWRtaW5pc3RyYXRvckFjY2Vzcw==",
      "externalId": "arn:aws:iam::aws:policy/AdministratorAccess",
      "displayName": "AdministratorAccess",
      "awsPolicyType": "system"
    },
    {
      "id": "YXJuOmF3czppYW06OjEyMzQ1Njc4OTAxMjpwb2xpY3kvQUFBLWxpc3RQdXRHZXRBbGxCdWNrZXRz",
      "externalId": "arn:aws:iam::123456789012:policy/AAA-listPutGetAllBuckets",
      "displayName": "AAA-listPutGetAllBuckets",
      "awsPolicyType": "custom"
    }
  ]
}
```

### Example 2: List all policies in an AWS authorization system with a specific name

#### Request

The following request lists all policies named `AdministratorAccess` in an AWS authorization system.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_awspolicy2"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies?$filter=displayName eq 'AdministratorAccess'
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-awspolicy2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.awsPolicy)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies",
  "value": [
    {
      "id": "YXJuOmF3czppYW06OmF3czpwb2xpY3kvQWRtaW5pc3RyYXRvckFjY2Vzcw==",
      "externalId": "arn:aws:iam::aws:policy/AdministratorAccess",
      "displayName": "AdministratorAccess",
      "awsPolicyType": "system"
    }
  ]
}
```

### Example 3: List all policies in an AWS authorization system with names containing a specific string

#### Request

The following request lists all policies in an AWS authorization system where the policy name contains the word `Buckets`.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_awspolicy3"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies?$filter=contains(displayName, 'Buckets')
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-awspolicy3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.awsPolicy)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies",
  "value": [
    {
      "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDpwb2xpY3kvQUFBLWxpc3RQdXRHZXRBbGxCdWNrZXRz",
      "externalId": "arn:aws:iam::377596131774:policy/AAA-listPutGetAllBuckets",
      "displayName": "AAA-listPutGetAllBuckets",
      "awsPolicyType": "custom"
    }
  ]
}
```

### Example 4: List all custom policies in an AWS authorization system.

#### Request

The following example requests all custom policies in an AWS authorization system.

<!-- {
  "blockType": "request",
  "name": "list_awspolicy4"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies?$filter=type eq 'custom'
```


#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.awsPolicy)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies",
  "value": [
    {
      "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDpwb2xpY3kvQUFBLWxpc3RQdXRHZXRBbGxCdWNrZXRz",
      "externalId": "arn:aws:iam::377596131774:policy/AAA-listPutGetAllBuckets",
      "displayName": "AAA-listPutGetAllBuckets",
      "awsPolicyType": "custom"
    },
    {
      "id": "YXJuOmF3czppb2xpY3kvQzU5NjEzMTc3NDpwb2xpY3kvQUFBLWxp",
      "externalId": "arn:aws:iam::377596131774:policy/BBB-GetAllBuckets",
      "displayName": "BBB-GetAllBuckets",
      "awsPolicyType": "custom"
    }
  ]
}
```

