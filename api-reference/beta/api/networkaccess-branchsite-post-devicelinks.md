---
title: "Create deviceLink (deprecated)"
description: "Create a branch site with associated device links."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
---

# Create deviceLink (deprecated)
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!IMPORTANT]
> Deprecated and to be retired soon. Use the [remoteNetwork resource type](../resources/networkaccess-remotenetwork.md) and its associated methods instead.

Create a branch site with associated device links.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_branchsite_post_devicelinks" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-branchsite-post-devicelinks-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [microsoft.graph.networkaccess.deviceLink](../resources/networkaccess-devicelink.md) object.

You can specify the following properties when creating a **deviceLink**.

|Property|Type|Description|
|:---|:---|:---|
|name|String|The name or identifier associated with a device link. Required.|
|ipAddress|String|The IP address associated with a device link. Required.|
|deviceVendor|microsoft.graph.networkaccess.deviceVendor|The vendor or manufacturer of the device associated with a device link. The possible values are: `barracudaNetworks`, `checkPoint`, `ciscoMeraki`, `citrix`, `fortinet`, `hpeAruba`, `netFoundry`, `nuage`, `openSystems`, `paloAltoNetworks`, `riverbedTechnology`, `silverPeak`, `vmWareSdWan`, `versa`, `other`. Required.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the device link was last modified. Required.|
|tunnelConfiguration|[microsoft.graph.networkaccess.tunnelConfiguration](../resources/networkaccess-tunnelconfiguration.md)|The tunnel configuration settings associated with a device link. Required.|
|bgpConfiguration|[microsoft.graph.networkaccess.bgpConfiguration](../resources/networkaccess-bgpconfiguration.md)|The Border Gateway Protocol (BGP) configuration settings associated with a device link. Required.|


## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.networkaccess.deviceLink](../resources/networkaccess-devicelink.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_devicelink_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/networkAccess/connectivity/branches/19a92090-c14e-4cea-a933-27d38f72c4d1/deviceLinks
Content-Type: application/json

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

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-devicelink-from--cli-snippets.md)]
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
The following example shows the response.
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
  "@odata.type": "#microsoft.graph.networkaccess.deviceLink",
  "id": "2f183529-b8d9-c6f1-0373-3a6beee36e38",
  "name": "device link 1",
  "ipAddress": "24.123.22.168",
  "deviceVendor": "intel",
  "bandwidthCapacityInMbps": "mbps250",
  "redundancyConfiguration_redundancyTier": "zoneRedundancy",
  "tunnelConfiguration_type": "microsoft.graph.networkAccess.tunnelConfigurationIKEv2Default",
  "tunnelConfiguration_preSharedKey": "/microsoft/keyVault/placeholder"
}
```
