---
title: "Update Microsoft 365 capability for default policy"
description: "Update an existing Microsoft 365 cross-tenant capability for the default cross-tenant access policy."
author: "lasharma"
ms.date: 07/07/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
toc.title: Update Microsoft 365 capability
---

# Update Microsoft 365 capability for default policy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an existing Microsoft 365 cross-tenant capability for the [default cross-tenant access policy](../resources/crosstenantaccesspolicyconfigurationdefault.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "crosstenantaccesspolicyconfigurationdefault_update_m365capabilities" } -->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantaccesspolicyconfigurationdefault-update-m365capabilities-permissions.md)]

[!INCLUDE [rbac-xtap-m365capabilities-apis-write](../includes/rbac-for-apis/rbac-xtap-m365capabilities-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /policies/crossTenantAccessPolicy/default/m365Capabilities/{m365CapabilityBase-name}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply *only* the values for properties that should be updated. Existing properties that aren't included in the request body maintain their previous values.

The following table specifies the properties that can be updated.

|Property|Type|Description|
|:---|:---|:---|
|inboundAccess|[m365CapabilityInboundAccess](../resources/m365capabilityinboundaccess.md)|The inbound access settings for the capability.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Update only the access setting

The following example shows how to update just the **isAllowed** setting for a capability.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_m365capabilitybase_default_minimal",
  "sampleKeys": ["crossTenantOpenProfileCard"]
}
-->
``` http
PATCH https://graph.microsoft.com/beta/policies/crossTenantAccessPolicy/default/m365Capabilities/crossTenantOpenProfileCard
Content-Type: application/json

{
  "inboundAccess": {
    "isAllowed": false
  }
}
```

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 2: Update the access setting and resource scopes

The following example shows how to update both the **isAllowed** setting and the **resourceScopes** for a capability.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_m365capabilitybase_default_full",
  "sampleKeys": ["crossTenantOpenProfileCard"]
}
-->
``` http
PATCH https://graph.microsoft.com/beta/policies/crossTenantAccessPolicy/default/m365Capabilities/crossTenantOpenProfileCard
Content-Type: application/json

{
  "inboundAccess": {
    "isAllowed": true,
    "resourceScopes": {
      "included": [
        {
          "resourceId": "ad4fc698-74dc-4f62-9e71-ba9b591e8e74",
          "resourceType": "group"
        },
        {
          "resourceId": "070061d7-a98e-43d3-b708-0758d3738ac7",
          "resourceType": "group"
        }
      ],
      "excluded": [
        {
          "resourceId": "ad4fc698-74dc-4f62-9e71-ba9b591e8e00",
          "resourceType": "group"
        }
      ]
    }
  }
}
```

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
