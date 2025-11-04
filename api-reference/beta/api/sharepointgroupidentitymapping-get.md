---
title: "Get sharePointGroupIdentityMapping"
description: "Retrieves a specific cross-organization group identity mapping based on the source group's Azure AD object ID."
author: "hongyangwan"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Get sharePointGroupIdentityMapping

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieves a specific cross-organization group identity mapping based on the source group's Azure AD object ID. This method allows clients to verify existing group migration configurations and confirm that mappings are correctly established prior to or during cross-tenant migration operations.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sharepointgroupidentitymapping-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sharepointgroupidentitymapping-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/sharePoint/migrations/crossOrganizationGroupMappings(sourceGroupObjectId='{sourceGroupObjectId}')
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

If successful, this method returns a `200 OK` response code and a [sharePointGroupIdentityMapping](../resources/sharepointgroupidentitymapping.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_sharepointgroupidentitymapping"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/sharePoint/migrations/crossOrganizationGroupMappings(sourceGroupObjectId='sourceGroupObjectId')
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sharePointGroupIdentityMapping"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.sharePointGroupIdentityMapping",
  "id": "String (base64-encoded identifier)",
  "sourceOrganizationId": "Guid",
  "groupType": "String",
  "sourceGroupIdentity": {
    "@odata.type": "microsoft.graph.identity",
    "id": "String"
  },
  "targetGroupIdentity": {
    "@odata.type": "microsoft.graph.identity",
    "id": "String"
  },
  "targetGroupMigrationData": {
    "@odata.type": "microsoft.graph.sharePointIdentityMappingGroupMigrationData"
  }
}
```

