---
title: "Get sharePointUserIdentityMapping"
description: "Retrieves a specific user identity mapping by source user principal name (UPN)."
author: "hongyangwan"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Get sharePointUserIdentityMapping

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieves a specific user identity mapping by source user principal name (UPN). Used to look up existing user mappings and verify migration configuration.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sharepointuseridentitymapping-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sharepointuseridentitymapping-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/sharePoint/migrations/crossOrganizationUserMappings(sourceUserPrincipalName='{sourceUserPrincipalName}')
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

If successful, this method returns a `200 OK` response code and a [sharePointUserIdentityMapping](../resources/sharepointuseridentitymapping.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_sharepointuseridentitymapping"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/sharePoint/migrations/crossOrganizationUserMappings(sourceUserPrincipalName='user1@contoso.com')
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sharePointUserIdentityMapping"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.sharePointUserIdentityMapping",
  "id": "String (base64-encoded identifier)",
  "sourceOrganizationId": "Guid",
  "userType": "String",
  "sourceUserIdentity": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "targetUserIdentity": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "targetUserMigrationData": {
    "@odata.type": "microsoft.graph.sharePointIdentityMappingUserMigrationData"
  }
}
```

