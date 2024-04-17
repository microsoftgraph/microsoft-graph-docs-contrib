---
title: "Create remoteNetwork"
description: "Create a new remote network."
author: abhijeetsinha
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
---

# Create remoteNetwork
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new remote network.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-connectivity-post-remotenetworks-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-connectivity-post-remotenetworks-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /networkAccess/connectivity/remoteNetworks
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [microsoft.graph.networkaccess.remoteNetwork](../resources/networkaccess-remotenetwork.md) object.

You can specify the following properties when creating a **remote network**.

|Property|Type|Description|
|:---|:---|:---|
|name|String|Name of the remote network. Required.|
|region|String|Specify the region closest to the remote network location. Required.|


## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.networkaccess.remoteNetwork](../resources/networkaccess-remotenetwork.md) object in the response body.

## Example 1: Create a remote network with just name and region

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_remoteNetwork_basic"
}
-->
``` http
POST https://graph.microsoft.com/beta/networkAccess/connectivity/remoteNetworks
Content-Type: application/json

{
    "name": "Bellevue branch",
    "region": "canadaEast"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-remotenetwork-basic-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-remotenetwork-basic-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-remotenetwork-basic-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-remotenetwork-basic-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-remotenetwork-basic-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-remotenetwork-basic-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-remotenetwork-basic-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/remoteNetworks/$entity",
    "id": "8a273997-b84d-422f-8dec-e1dd82a4035b",
    "name": "Bellevue branch",
    "region": "canadaEast",
    "version": "1.0.0",
    "lastModifiedDateTime": "2024-02-01T00:41:48Z"
}
```

## Example 2: Create a remote network with forwarding profile
To get the ID of forwarding profiles of your organization, refer to this article - [List forwardingProfiles](networkaccess-networkaccessroot-list-forwardingprofiles.md).

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_remoteNetwork_with_forwardingProfile"
}
-->
``` http
POST https://graph.microsoft.com/beta/networkAccess/connectivity/remoteNetworks
Content-Type: application/json

{
    "name": "Bellevue branch w/ fwd profile",
    "region": "canadaEast",
    "forwardingProfiles": [
        {
            "id": "1adaf535-1e31-4e14-983f-2270408162bf"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-remotenetwork-with-forwardingprofile-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-remotenetwork-with-forwardingprofile-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-remotenetwork-with-forwardingprofile-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-remotenetwork-with-forwardingprofile-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-remotenetwork-with-forwardingprofile-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-remotenetwork-with-forwardingprofile-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-remotenetwork-with-forwardingprofile-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/remoteNetworks/$entity",
    "id": "6542b28c-5ba7-4b50-9576-e63a6210e481",
    "name": "Bellevue branch w/ fwd profile",
    "region": "canadaEast",
    "version": "1.0.0",
    "lastModifiedDateTime": "2024-02-01T00:54:45Z"
}
```

## Example 3: Create a remote network with device link and forwarding profile
To get the ID of forwarding profiles of your organization, refer to this article - [List forwardingProfiles](networkaccess-networkaccessroot-list-forwardingprofiles.md).

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_remoteNetwork_with_forwardingProfile_deviceLink"
}
-->
``` http
POST https://graph.microsoft.com/beta/networkAccess/connectivity/remoteNetworks
Content-Type: application/json

{
    "name": "Bellevue branch w/ device link",
    "region": "canadaEast",
    "forwardingProfiles": [
        {
            "id": "1adaf535-1e31-4e14-983f-2270408162bf"
        }
    ],
    "deviceLinks": [
        {
            "name": "CPE1",
            "ipAddress": "52.13.21.25",
            "bandwidthCapacityInMbps": "mbps500",
            "deviceVendor": "barracudaNetworks",
            "bgpConfiguration": {
                "localIpAddress": "192.168.1.2",
                "peerIpAddress": "10.1.1.2",
                "asn": 65533
            },
            "redundancyConfiguration": {
                "zoneLocalIpAddress": null,
                "redundancyTier": "noRedundancy"
            },
            "tunnelConfiguration": {
                "@odata.type": "#microsoft.graph.networkaccess.tunnelConfigurationIKEv2Default",
                "preSharedKey": "test123"
            }
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-remotenetwork-with-forwardingprofile-devicelink-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-remotenetwork-with-forwardingprofile-devicelink-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-remotenetwork-with-forwardingprofile-devicelink-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-remotenetwork-with-forwardingprofile-devicelink-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-remotenetwork-with-forwardingprofile-devicelink-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-remotenetwork-with-forwardingprofile-devicelink-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-remotenetwork-with-forwardingprofile-devicelink-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/remoteNetworks/$entity",
    "id": "5d2f5061-4876-4c1c-ba2d-5acc6a73742d",
    "name": "Bellevue branch w/ device link",
    "region": "canadaEast",
    "version": "1.0.0",
    "lastModifiedDateTime": "2024-02-01T01:02:25Z"
}
```
