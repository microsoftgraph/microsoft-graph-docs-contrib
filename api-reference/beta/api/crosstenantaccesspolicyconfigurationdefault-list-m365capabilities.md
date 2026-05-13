---
title: "List m365Capabilities for default policy"
description: "Get a list of Microsoft 365 cross-tenant capabilities configured for the default cross-tenant access policy."
author: "lasharma"
ms.date: 04/23/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List m365Capabilities for default policy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of Microsoft 365 cross-tenant capabilities configured for the [default cross-tenant access policy](../resources/crosstenantaccesspolicyconfigurationdefault.md). The returned collection is a heterogeneous collection of derived types of [m365CapabilityBase](../resources/m365capabilitybase.md), differentiated by their **@odata.type** property.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "crosstenantaccesspolicyconfigurationdefault_list_m365capabilities" } -->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantaccesspolicyconfigurationdefault-list-m365capabilities-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/crossTenantAccessPolicy/default/m365Capabilities
```

## Optional query parameters

This method supports the `$select`, `$filter`, `$top`, `$skip`, and `$count` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [m365CapabilityBase](../resources/m365capabilitybase.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_m365capabilitybase"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/crossTenantAccessPolicy/default/m365Capabilities
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.m365CapabilityBase)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.crossTenantOpenProfileCard",
      "name": "crossTenantOpenProfileCard",
      "lastModifiedDateTime": "2026-01-15T10:04:11.4531504Z",
      "inboundAccess": {
        "isAllowed": true,
        "resourceScopes": {
          "included": [
            {
              "resourceId": "ad4fc698-74dc-4f62-9e71-ba9b591e8e74",
              "resourceType": "group"
            }
          ],
          "excluded": []
        }
      }
    },
    {
      "@odata.type": "#microsoft.graph.crossTenantMigration",
      "name": "crossTenantMigration",
      "lastModifiedDateTime": "2026-01-15T10:08:08.8321956Z",
      "inboundAccess": {
        "isAllowed": false,
        "resourceScopes": {
          "included": [],
          "excluded": []
        }
      }
    }
  ]
}
```
