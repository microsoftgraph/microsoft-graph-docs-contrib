---
title: "Assign a forwardingProfile to a branchSite"
description: "Create a new branch and assign a forwarding profile."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Create forwardingProfile
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new branch and assign a forwarding profile.

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
POST /networkAccess/connectivity/branches/{branchSiteId}/forwardingProfiles
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) object.

You can specify the following properties when creating a **forwardingProfile**.

|Property|Type|Description|
|:---|:---|:---|
|name|String|Name of the branch. Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md). Required.|
|description|String|Description. Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md). Optional.|
|state|microsoft.graph.networkaccess.status|Status. Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md). The possible values are: `enabled`, `disabled`. Required.|
|associations|[microsoft.graph.networkaccess.association](../resources/networkaccess-association.md) collection|The forwarding profile collection represents a group of multiple forwarding profiles. Required.|



## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) object in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_branch_and_assign_forwardingprofile"
}
-->
``` http
POST https://graph.microsoft.com/beta/networkAccess/connectivity/branches/{branchSiteId}/
Content-Type: application/json

{
    "name": "branch 1",
    "region": "eastUS",
    "deviceLinks":
    [
        {
            "name": "device link 1",
            "ipAddress": "24.123.22.168",
            "deviceVendor": "intel",
            "bandwidthCapacityInMbps": "mbps250",
            "bgpConfiguration":
            {
                "localIpAddress": "1.128.24.22",
                "peerIpAddress": "1.128.24.28",
                "asn": 4,
            },
            "redundancyConfiguration":
            {
                "zoneLocalIpAddress": "1.128.23.20",
                "redundancyTier": "zoneRedundancy",
            },
            "tunnelConfiguration":
            {
                "@odata.type": "microsoft.graph.networkAccess.tunnelConfigurationIKEv2Default",
                "preSharedKey": "/path/to/kv"
            }
        }
    ],
    "forwardingProfiles": [
        {
            "id": "8e30d8d6-3588-4d5f-a704-6bd843be5b8f"
        }
    ]
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-branch-and-assign-forwardingprofile-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.forwardingProfile"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://localhost:5001/networkaccess/connectivity/$metadata#branches/$entity",
    "id": "c038928c-4100-4b8d-895d-f90ae38bafa1",
    "name": "branch 1",
    "region": "eastUS",
    "connectivityState": "pending",
    "version": "1.0.0",
    "lastModifiedDateTime": "2021-01-05T00:00:00Z",
    "deviceLinks": [
        {
            "id": "f29753d5-85b4-4cce-9194-10a287568973",
            "name": "device link 1",
            "ipAddress": "24.123.22.168",
            "deviceVendor": "intel",
            "bandwidthCapacityInMbps": "mbps250",
            "bgpConfiguration":
            {
                "localIpAddress": "1.128.24.22",
                "peerIpAddress": "1.128.24.28",
                "asn": 4,
            },
            "redundancyConfiguration":
            {
                "zoneLocalIpAddress": "1.128.23.20",
                "redundancyTier": "zoneRedundancy",
            },
            "tunnleConfiguration": {
                "@odata.type": "#microsoft.graph.networkaccess.TunnleConfigurationIKEv2Deafult",
                "preSharedKey": "/path/to/kv"
            }
        }
    ],
    "forwardingProfiles": [
        {
            "id": "8e30d8d6-3588-4d5f-a704-6bd843be5b8f"
        }
    ]
}
```

