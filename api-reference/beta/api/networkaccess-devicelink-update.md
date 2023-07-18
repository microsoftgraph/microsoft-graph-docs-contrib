---
title: "Update deviceLink"
description: "Update the device link associated with a specific branch."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Update deviceLink
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the device link associated with a specific branch.

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
PATCH /networkAccess/connectivity/branches/{branchSiteId}/deviceLinks/{deviceLinkId}
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
|name|String|Represents the name or identifier associated with a device link. Required.|
|ipAddress|String|Represents the IP address associated with a device link. Required.|
|deviceVendor|microsoft.graph.networkaccess.deviceVendor|Represents the vendor or manufacturer of the device associated with a device link. The possible values are: `barracudaNetworks`, `checkPoint`, `ciscoMeraki`, `citrix`, `fortinet`, `hpeAruba`, `netFoundry`, `nuage`, `openSystems`, `paloAltoNetworks`, `riverbedTechnology`, `silverPeak`, `vmWareSdWan`, `versa`, `other`. Required.|
|lastModifiedDateTime|DateTimeOffset|Represents the date and time when the device link was last modified. Required.|
|tunnelConfiguration|[microsoft.graph.networkaccess.tunnelConfiguration](../resources/networkaccess-tunnelconfiguration.md)|Represents the tunnel configuration settings associated with a device link. Required.|
|bgpConfiguration|[microsoft.graph.networkaccess.bgpConfiguration](../resources/networkaccess-bgpconfiguration.md)|Represents the Border Gateway Protocol (BGP) configuration settings associated with a device link. Required.|



## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_devicelink"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/networkAccess/connectivity/branches/{branchSiteId}/deviceLinks/{deviceLinkId}
Content-Type: application/json

{
    "name": "Backup Link"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-devicelink-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-devicelink-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-devicelink-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-devicelink-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-devicelink-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-devicelink-python-snippets.md)]
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


