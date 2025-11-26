---
title: "List onPremAuthenticationPolicy appliesTo"
description: "List directory objects that are assigned onPremAuthenticationPolicy"
author: "maheshwaria"
ms.date: 09/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List onPremAuthenticationPolicy appliesTo

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List directory objects that are assigned an [onPremAuthenticationPolicy](../resources/onpremauthenticationpolicy.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onpremauthenticationpolicy-list-appliesto-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/onpremauthenticationpolicy-list-appliesto-permissions.md)]

[!INCLUDE [onpremauthenticationpolicy-entra-roles-read](../includes/rbac-for-apis/onpremauthenticationpolicy-entra-roles-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/onPremAuthenticationPolicies/{onPremAuthenticationPolicyId}/appliesTo
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

If successful, this method returns a `200 OK` response code and a collection of [directoryObject](../resources/directoryobject.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_onPremAuthAppliesTo_directoryobject"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/onPremAuthenticationPolicies/a6c034b8-621b-dee3-6abb-52cbce801fe9/appliesTo
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.directoryObject",
      "id": "a6c034b8-621b-dee3-6abb-52cbce801fe9",
      "deletedDateTime": null
    }
  ]
}
```

