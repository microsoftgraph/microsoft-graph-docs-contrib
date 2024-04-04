---
title: "Get awsPolicy"
description: "Read the properties and relationships of an awsPolicy object."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
ms.topic: reference
---

# Get awsPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a single [awsPolicy](../resources/awspolicy.md) object in an AWS authorization system. An AWS policy is an object in AWS that defines the permissions of the associated entity or resource. When a principal, such as a user, makes a request, the policies and their associated permissions determine whether the request is allowed or denied.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "awspolicy_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/awspolicy-get-permissions.md)]

<!--
[!INCLUDE [epm-rbac-servicenow-apis-read](../includes/rbac-for-apis/epm-rbac-servicenow-apis-read.md)]
-->

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies/{awsPolicyId}
GET /external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies(externalId='{externalId}')
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

If successful, this method returns a `200 OK` response code and an [awsPolicy](../resources/awspolicy.md) object in the response body.

## Examples

### Request
The following example shows a request to Retrieve the details of an AWS policy by its ID.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_awspolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies/YXJuOmF3czppYW06OjEyMzQ1Njc4OTAxMjpwb2xpY3kvQUFBLWxpc3RQdXRHZXRBbGxCdWNrZXRz
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-awspolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.awsPolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": 
    {
      "@odata.type": "#microsoft.graph.awsPolicy",
      "id": "YXJuOmF3czppYW06OjEyMzQ1Njc4OTAxMjpwb2xpY3kvQUFBLWxpc3RQdXRHZXRBbGxCdWNrZXRz",
      "externalId": "arn:aws:iam::123456789012:policy/AAA-listPutGetAllBuckets",
      "displayName": "AAA-listPutGetAllBuckets",
      "awsPolicyType": "custom"
    }
}
```

