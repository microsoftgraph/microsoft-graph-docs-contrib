---
title: "Get branchSite"
description: "Retrieve information about a specific branch."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Get branchSite
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve information about a specific branch.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccessPolicy.Read.All, NetworkAccessPolicy.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/connectivity/branches/{branchSiteId}
```

## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).
| Pattern | Supported | Syntax                                                               | Notes       |
| ------- | :-------- | :------------------------------------------------------------------- | :---------- |
| select  | ✔         | `/networkAccess/connectivity/branches?$select=forwardingProfiles/id` | first level |

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.branchSite](../resources/networkaccess-branchsite.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_branchsite"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/connectivity/branches/{branchSiteId}
```


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
    "id": "047d69c4-2448-45cc-8c0a-40f3ad93c86c",
    "name": "Main Branch",
    "country": "United States",
    "region": "eastUS",
    "version": "1.0.0",
    "bandwidthCapacity": 250,
    "lastModifiedDateTime": "2023-05-23T08:46:32Z",
    "forwardingProfiles@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/branches('047d69c4-2448-45cc-8c0a-40f3ad93c86c')/forwardingProfiles",
    "forwardingProfiles": [],
    "deviceLinks@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/branches('047d69c4-2448-45cc-8c0a-40f3ad93c86c')/deviceLinks",
    "deviceLinks": []
}
```


