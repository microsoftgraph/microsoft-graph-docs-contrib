---
title: "Update Microsoft 365 capability for partner"
description: "Update an existing Microsoft 365 cross-tenant capability for a partner organization in the cross-tenant access policy."
author: "lasharma"
ms.date: 07/07/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
toc.title: Update Microsoft 365 capability
---

# Update Microsoft 365 capability for partner

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an existing Microsoft 365 cross-tenant capability for a partner organization in the [cross-tenant access policy](../resources/crosstenantaccesspolicy-overview.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "crosstenantaccesspolicyconfigurationpartner_update_m365capabilities" } -->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantaccesspolicyconfigurationpartner-update-m365capabilities-permissions.md)]

[!INCLUDE [rbac-xtap-m365capabilities-apis-write](../includes/rbac-for-apis/rbac-xtap-m365capabilities-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /policies/crossTenantAccessPolicy/partners/{crossTenantAccessPolicyConfigurationPartner-id}/m365Capabilities/{m365CapabilityBase-name}
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

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_m365capabilitybase_partner",
  "sampleKeys": ["e8c338c6-d070-466e-a3d5-ca735b9261b4", "crossTenantOpenProfileCard"]
}
-->
``` http
PATCH https://graph.microsoft.com/beta/policies/crossTenantAccessPolicy/partners/e8c338c6-d070-466e-a3d5-ca735b9261b4/m365Capabilities/crossTenantOpenProfileCard
Content-Type: application/json

{
  "inboundAccess": {
    "isAllowed": false,
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
      "excluded": []
    }
  }
}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
