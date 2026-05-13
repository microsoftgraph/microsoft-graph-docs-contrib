---
title: "Create m365CapabilityBase for partner"
description: "Create a new Microsoft 365 cross-tenant capability for a partner organization in the cross-tenant access policy."
author: "lasharma"
ms.date: 04/23/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Create m365CapabilityBase for partner

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new Microsoft 365 cross-tenant capability for a partner organization in the [cross-tenant access policy](../resources/crosstenantaccesspolicy-overview.md). The **@odata.type** property in the request body is required to specify which type of capability to create.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "crosstenantaccesspolicyconfigurationpartner_post_m365capabilities" } -->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantaccesspolicyconfigurationpartner-post-m365capabilities-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /policies/crossTenantAccessPolicy/partners/{crossTenantAccessPolicyConfigurationPartner-id}/m365Capabilities
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of a derived type of [m365CapabilityBase](../resources/m365capabilitybase.md). The **@odata.type** property is required to specify the capability type.

You can specify the following properties when you create an **m365CapabilityBase** capability.

|Property|Type|Description|
|:---|:---|:---|
|@odata.type|String|The type of capability to create. Required. Example values: `#microsoft.graph.crossTenantOpenProfileCard`, `#microsoft.graph.crossTenantMigration`|
|inboundAccess|[m365CapabilityInboundAccess](../resources/m365capabilityinboundaccess.md)|The inbound access settings for the capability. Required.|

## Response

If successful, this method returns a `201 Created` response code and the created capability object in the response body.

## Examples

### Example 1: Create a cross-tenant mail tips capability
The following example shows how to create a [cross-tenant mail tips](../resources/crosstenantmailtipslimited.md) capability.
#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_crosstenantmailtipslimited_partner",
  "sampleKeys": ["af7b70b0-d161-4628-82b4-16190344c029"]
}
-->
``` http
POST https://graph.microsoft.com/beta/policies/crossTenantAccessPolicy/partners/af7b70b0-d161-4628-82b4-16190344c029/m365Capabilities
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.crossTenantMailTipsLimited",
  "inboundAccess": {
    "isAllowed": false,
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
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-crosstenantmailtipslimited-partner-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-crosstenantmailtipslimited-partner-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-crosstenantmailtipslimited-partner-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-crosstenantmailtipslimited-partner-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-crosstenantmailtipslimited-partner-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-crosstenantmailtipslimited-partner-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.crossTenantMailTipsLimited"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.crossTenantMailTipsLimited",
  "name": "crossTenantMailTipsLimited",
  "lastModifiedDateTime": "2026-01-15T09:57:58.6364196Z",
  "inboundAccess": {
    "isAllowed": false,
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
}
```

### Example 2: Create a cross-tenant places room booking capability
The following example shows how to create a [cross-tenant places room booking](../resources/crosstenantplacesroombooking.md) capability.
#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_crosstenantplacesroombooking_partner",
  "sampleKeys": ["af7b70b0-d161-4628-82b4-16190344c029"]
}
-->
``` http
POST https://graph.microsoft.com/beta/policies/crossTenantAccessPolicy/partners/af7b70b0-d161-4628-82b4-16190344c029/m365Capabilities
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.crossTenantPlacesRoomBooking",
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
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-crosstenantplacesroombooking-partner-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-crosstenantplacesroombooking-partner-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-crosstenantplacesroombooking-partner-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-crosstenantplacesroombooking-partner-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-crosstenantplacesroombooking-partner-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-crosstenantplacesroombooking-partner-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.crossTenantPlacesRoomBooking"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.crossTenantPlacesRoomBooking",
  "name": "crossTenantPlacesRoomBooking",
  "lastModifiedDateTime": "2026-01-15T10:27:34.8241493Z",
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
}
```
