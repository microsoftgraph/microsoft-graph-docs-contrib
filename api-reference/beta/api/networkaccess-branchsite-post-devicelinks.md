---
title: "Create deviceLink"
description: "Create a branch site with associated device links."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Create deviceLink
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a branch site with associated device links.

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
POST /networkAccess/connectivity/branches/{branchSiteId}/deviceLinks
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [microsoft.graph.networkaccess.deviceLink](../resources/networkaccess-devicelink.md) object.

You can specify the following properties when creating a **deviceLink**.

|Property|Type|Description|
|:---|:---|:---|
|name|String|Represents the name or identifier associated with a device link. Required.|
|ipAddress|String|Represents the IP address associated with a device link. Required.|
|deviceVendor|microsoft.graph.networkaccess.deviceVendor|Represents the vendor or manufacturer of the device associated with a device link. The possible values are: `barracudaNetworks`, `checkPoint`, `ciscoMeraki`, `citrix`, `fortinet`, `hpeAruba`, `netFoundry`, `nuage`, `openSystems`, `paloAltoNetworks`, `riverbedTechnology`, `silverPeak`, `vmWareSdWan`, `versa`, `other`. Required.|
|lastModifiedDateTime|DateTimeOffset|Represents the date and time when the device link was last modified. Required.|
|tunnelConfiguration|[microsoft.graph.networkaccess.tunnelConfiguration](../resources/networkaccess-tunnelconfiguration.md)|Represents the tunnel configuration settings associated with a device link. Required.|
|bgpConfiguration|[microsoft.graph.networkaccess.bgpConfiguration](../resources/networkaccess-bgpconfiguration.md)|Represents the Border Gateway Protocol (BGP) configuration settings associated with a device link. Required.|


## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.networkaccess.deviceLink](../resources/networkaccess-devicelink.md) object in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_devicelink_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/networkAccess/connectivity/branches/19a92090-c14e-4cea-a933-27d38f72c4d1/deviceLinks

{
    "name": "device link 1",
    "ipAddress": "24.123.22.168",
    "deviceVendor": "intel",
    "bandwidthCapacityInMbps": "mbps250",
    "bgpConfiguration":
    {
        "localIpAddress": "1.128.24.22",
        "peerIpAddress": "1.128.24.28",
        "asn": 4
    },
    "redundancyConfiguration":
    {
        "zoneLocalIpAddress": "1.128.23.20",
        "redundancyTier": "zoneRedundancy"
    },
    "tunnelConfiguration":
    {
        "@odata.type": "microsoft.graph.networkAccess.tunnelConfigurationIKEv2Default",
        "preSharedKey": "/microsoft/keyVault/placeholder"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-devicelink-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-devicelink-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-devicelink-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-devicelink-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-devicelink-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-devicelink-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.deviceLink"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "http://graph.microsoft.com/beta/networkAccess/connectivity/branches/19a92090-c14e-4cea-a933-27d38f72c4d1/$metadata#deviceLinks",
    "value": [
        {
            "id": "26b92330-c246-2cef-a131-27d38f72c4s4",
            "name": "device link 1",
            "ipAddress": "24.123.22.168",
            "deviceVendor": "intel",
            "bandwidthCapacityInMbps": "mbps250",
            "connectivityState": "invalid",
            "lastModifiedDateTime" : "2021-01-05T00:00:00Z"
        },

    ]
}
```
