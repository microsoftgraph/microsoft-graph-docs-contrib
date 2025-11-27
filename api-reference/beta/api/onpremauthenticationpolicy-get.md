---
title: "Get onPremAuthenticationPolicy"
description: "Read the properties and relationships of onPremAuthenticationPolicy object."
author: "maheshwaria"
ms.date: 09/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get onPremAuthenticationPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [onPremAuthenticationPolicy](../resources/onpremauthenticationpolicy.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onpremauthenticationpolicy-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/onpremauthenticationpolicy-get-permissions.md)]

[!INCLUDE [onpremauthenticationpolicy-entra-roles-read](../includes/rbac-for-apis/onpremauthenticationpolicy-entra-roles-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/onPremAuthenticationPolicies/{onPremAuthenticationPolicyId}
```

## Optional query parameters

This method supports the `$select`, `$filter`, and `$expand` OData query parameters to customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [onPremAuthenticationPolicy](../resources/onpremauthenticationpolicy.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_onpremauthenticationpolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/onPremAuthenticationPolicies/2e68a8f2-50ce-b21d-d25d-c34b59675ee2
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onPremAuthenticationPolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.onPremAuthenticationPolicy",
  "id": "2e68a8f2-50ce-b21d-d25d-c34b59675ee2",
  "deletedDateTime": null,
  "description": "Policy definition to manage and control authentication settings.",
  "displayName": "Demo policy name",
  "definition": [
    "{\"Version\":0,\"LastUpdatedTimestamp\":\"2025-01-28T22:47:12.7764932Z\", \"Key1\": \"Value1\", \"Key2\": {\"SubKey1\": \"SubValue1\"}}"
  ],
  "isOrganizationDefault": true
}
```

