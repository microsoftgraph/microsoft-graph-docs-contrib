---
title: "Update remoteNetwork"
description: "Update the configuration or properties of a specific remote etwork."
author: abhijeetsinha
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
---

# Update remoteNetwork
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the configuration or properties of a specific remote network.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-remotenetwork-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-remotenetwork-update-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /networkAccess/connectivity/remoteNetworks/{remoteNetworkId}
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
|name|String|Name of the remote network.|

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.remoteNetwork](../resources/networkaccess-remotenetwork.md) object in the response body.

## Examples

### Request

The following is an example of a request.

``` http
PATCH https://graph.microsoft.com/beta/networkAccess/connectivity/remoteNetworks/dc6a7efd-6b2b-4c6a-84e7-5dcf97e62e04
Content-Type: application/json

{
    "name": "Test Redmond branch"
}
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.remoteNetwork"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/remoteNetworks/$entity",
    "id": "dc6a7efd-6b2b-4c6a-84e7-5dcf97e62e04",
    "name": "Test Redmond branch",
    "region": "canadaEast",
    "version": "1.0.0",
    "lastModifiedDateTime": "2024-01-27T06:16:14Z",
    "forwardingProfiles@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/remoteNetworks('dc6a7efd-6b2b-4c6a-84e7-5dcf97e62e04')/forwardingProfiles",
    "forwardingProfiles": [],
    "deviceLinks@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/remoteNetworks('dc6a7efd-6b2b-4c6a-84e7-5dcf97e62e04')/deviceLinks",
    "deviceLinks": [
        {
            "id": "47aab2e9-7f5c-42ba-bbfc-1b049193126a",
            "name": "name",
            "ipAddress": "1.2.3.1",
            "bandwidthCapacityInMbps": "mbps500",
            "deviceVendor": "barracudaNetworks",
            "lastModifiedDateTime": "2024-01-27T06:16:14Z",
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
    ]
}
```


