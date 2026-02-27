---
title: "List filteringProfiles"
description: "Get a list of the filteringProfile objects and their properties."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
ms.date: 08/13/2024
---

# List filteringProfiles
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [filteringProfile](../resources/networkaccess-filteringprofile.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_filteringprofile_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-filteringprofile-list-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /networkAccess/filteringProfiles
```

## Optional query parameters
This method supports the `$expand` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [filteringProfile](../resources/networkaccess-filteringprofile.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_filteringprofile"
}
-->
```http
GET https://graph.microsoft.com/beta/networkAccess/filteringProfiles
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.filteringProfile)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "priority": 100,
            "createdDateTime": "2023-10-29T11:35:09Z",
            "id": "37e746aa-4473-4aee-bd3a-1838d67b6311",
            "name": "Block Social",
            "description": null,
            "state": "enabled",
            "version": "1.0.0",
            "lastModifiedDateTime": "2023-10-30T08:53:42Z",
            "policies@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/filteringProfiles('37e746aa-4473-4aee-bd3a-1838d67b6311')/policies(policy())",
            "policies": [],
            "conditionalAccessPolicies": []
        }        
    ]
}

```

