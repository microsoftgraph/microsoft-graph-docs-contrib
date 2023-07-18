---
title: "Update forwardingProfile"
description: "Update an existing forwarding profile."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Update forwardingProfile
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an existing forwarding profile.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccessPolicy.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

To update a base forwarding profile:
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /networkAccess/forwardingProfiles/{forwardingProfileId}
```

To update a forwarding profile for a branch:

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /networkAccess/connectivity/branches/{branchSiteId}/forwardingProfiles
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|name|String|Name of profile. Required.|
|associations|[microsoft.graph.networkaccess.association](../resources/networkaccess-association.md) collection|Specifies the users, groups, devices, and branch locations that are associated with this traffic forwarding profile. Optional. You must include the **@odata.type** property with a value of the specific association in the body. For example, `"@odata.type": "#microsoft.graph.associatedBranch"`. |


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_forwardingprofile"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/networkAccess/forwardingProfiles/{forwardingProfileId}
Content-Type: application/json

{
    "associations": [
        {
            "@odata.type": "#microsoft.graph.networkaccess.associatedBranch",
            "branchId": "88e5a488-92c3-45d6-ba56-e5cfa63677e8"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-forwardingprofile-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-forwardingprofile-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-forwardingprofile-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-forwardingprofile-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-forwardingprofile-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-forwardingprofile-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```


