---
title: "List webFilteringPolicy objects"
description: "Get a list of the webFilteringPolicy objects and their properties."
author: "mialdrid"
ms.date: 09/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# List webFilteringPolicy objects

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [webFilteringPolicy](../resources/networkaccess-webfilteringpolicy.md) objects.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-networkaccessroot-list-webfilteringpolicies-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-networkaccessroot-list-webfilteringpolicies-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /networkAccess/webFilteringPolicies
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

If successful, this method returns a `200 OK` response code and a collection of [webFilteringPolicy](../resources/networkaccess-webfilteringpolicy.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_webfilteringpolicy"
}
-->
```http
GET https://graph.microsoft.com/beta/networkAccess/webFilteringPolicies
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.webFilteringPolicy"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.networkaccess.webFilteringPolicy",
      "id": "252156ed-6901-389c-4cba-f4aa8856a307",
      "name": "Block social networking sites",
      "description": "Blocks access to selected social networking destinations",
      "version": "1.0",
      "lastModifiedDateTime": "2026-09-09T08:53:02Z",
      "settings": {
        "@odata.type": "microsoft.graph.networkaccess.webFilteringPolicySettings"
      }
    }
  ]
}
```
