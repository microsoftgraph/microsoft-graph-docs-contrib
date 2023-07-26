---
title: "Update branch"
description: "Update the configuration or properties of a specific branch."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Update branchSite
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the configuration or properties of a specific branch.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccessPolicy.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /networkAccess/connectivity/branches/{branchSiteId}
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
|name|String|Name of the branch. Required.|
|country|String|Country the branch is created in. Required.|
|region|String|Location the branch  is created in. Required.|
|bandwidthCapacity|Int64|The maximum allowed Mbps (megabits per second) bandwidth for a branch. Required.|

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.branchSite](../resources/networkaccess-branchsite.md) object in the response body.

## Examples

### Request

The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_branchsite"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/networkAccess/connectivity/branches/{branchSiteId}
Content-Type: application/json

{
    "name": "My updated branch"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-branchsite-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-branchsite-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-branchsite-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-branchsite-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-branchsite-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-branchsite-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.branchSite"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/branches/$entity",
    "id": "88e5a488-92c3-45d6-ba56-e5cfa63677e8",
    "name": "test branch - 11:50",
    "country": "United States",
    "region": "East US",
    "version": "1.0.0",
    "bandwidthCapacity": 500,
    "lastModifiedDateTime": "2023-05-24T08:22:02Z"
}
```


