---
title: "List deviceLinks"
description: "Retrieve a list of device links associated with a specific remote network."
author: abhijeetsinha
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
---

# List deviceLinks
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of device links associated with a specific remote network.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-remotenetwork-list-devicelinks-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-remotenetwork-list-devicelinks-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/connectivity/remoteNetworks/{remoteNetworkId}/deviceLinks
```

## Optional query parameters

This method supports the `$expand` [OData query parameter](/graph/query-parameters) to help customize the response.


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.networkaccess.deviceLink](../resources/networkaccess-devicelink.md) objects in the response body.

## Examples

### Request
The following is an example of a request.

``` http
GET hhttps://graph.microsoft.com/beta/networkAccess/connectivity/remoteNetworks/4ecfc62c-ec85-42fd-af37-5a93c7deb1d9/deviceLinks
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.deviceLink)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/remoteNetworks('4ecfc62c-ec85-42fd-af37-5a93c7deb1d9')/deviceLinks",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET networkAccess/connectivity/remoteNetworks('<guid>')/deviceLinks?$select=bandwidthCapacityInMbps,bgpConfiguration",
    "value": [
        {
            "id": "109376bf-6dc7-4183-ab11-4a1206fb5e90",
            "name": "VNG",
            "ipAddress": "20.172.65.16",
            "bandwidthCapacityInMbps": "mbps500",
            "deviceVendor": "other",
            "lastModifiedDateTime": "2024-01-17T20:59:13Z",
            "bgpConfiguration": {
                "localIpAddress": "192.168.1.2",
                "peerIpAddress": "10.0.2.5",
                "asn": 65533
            },
            "redundancyConfiguration": {
                "zoneLocalIpAddress": "192.168.1.3",
                "redundancyTier": "zoneRedundancy"
            },
            "tunnelConfiguration": {
                "@odata.type": "#microsoft.graph.networkaccess.tunnelConfigurationIKEv2Default",
                "preSharedKey": "test123"
            }
        }
    ]
}
```
