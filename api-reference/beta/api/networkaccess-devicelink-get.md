---
title: "Get deviceLink"
description: "Retrieve the device link associated with a specific branch or remote network."
author: abhijeetsinha
ms.localizationpriority: medium
ms.prod: global-secure-access
doc_type: apiPageType
---

# Get deviceLink
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieves a specific device link associated with a remote network.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_devicelink_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-devicelink-get-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]
## HTTP request
> [!NOTE]
> The `/branches/{branchSiteId}/...` path will be retired soon. Use the `/remoteNetworks/{remoteNetworkId}/...` path instead.
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/connectivity/branches/{branchSiteId}/deviceLinks/{deviceLinkId}
GET /networkAccess/connectivity/remoteNetworks/{remoteNetworkId}/deviceLinks/{deviceLinkId}
```

## Optional query parameters
This method does not support any OData query parameters.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.deviceLink](../resources/networkaccess-devicelink.md) object in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_devicelink"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/connectivity/remoteNetworks/dc6a7efd-6b2b-4c6a-84e7-5dcf97e62e04/deviceLinks/47aab2e9-7f5c-42ba-bbfc-1b049193126a
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.deviceLink"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/remoteNetworks('dc6a7efd-6b2b-4c6a-84e7-5dcf97e62e04')/deviceLinks/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET networkAccess/connectivity/remoteNetworks('<guid>')/deviceLinks('<guid>')?$select=bandwidthCapacityInMbps,bgpConfiguration",
    "id": "47aab2e9-7f5c-42ba-bbfc-1b049193126a",
    "name": "name",
    "ipAddress": "1.2.3.1",
    "bandwidthCapacityInMbps": "mbps500",
    "deviceVendor": "barracudaNetworks",
    "lastModifiedDateTime": "2024-01-27T07:09:17Z",
    "bgpConfiguration": {
        "localIpAddress": "1.2.1.1",
        "peerIpAddress": "1.2.3.1",
        "asn": 899
    },
    "redundancyConfiguration": {
        "zoneLocalIpAddress": null,
        "redundancyTier": "noRedundancy"
    },
    "tunnelConfiguration": {
        "@odata.type": "#microsoft.graph.networkaccess.tunnelConfigurationIKEv2Default",
        "preSharedKey": "dcf"
    }
}
```


