---
title: "Assign forwardingProfile"
description: "Assign a forwarding profile to a remote network"
author: abhijeetsinha
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
---

# Assign forwardingProfile
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Assign a forwarding profile to an existing remote network. To create a remote network with traffic forwarding profile, see [Create remoteNetwork](networkaccess-connectivity-post-remotenetworks.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-remotenetwork-post-forwardingprofiles-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-remotenetwork-post-forwardingprofiles-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /networkAccess/connectivity/remoteNetworks/{remoteNetworkId}/forwardingProfiles
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) object.

You can specify the following properties when associating a **forwardingProfile** to a remote network.

|Property|Type|Description|
|:---|:---|:---|
|id|String|ID of the forwarding profile. Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md). Required.|

## Response

If successful, this method returns a `OK 200` response code.

## Examples
To get the id of forwarding profiles of your organization, refer to this article - [List forwardingProfiles](networkaccess-networkaccessroot-list-forwardingprofiles.md).

### Request
The following example shows a request.

``` http
PATCH https://graph.microsoft.com/beta/networkAccess/connectivity/remoteNetworks/{remoteNetworkId}/forwardingProfiles
Content-Type: application/json

{
    "@context": "#$delta",
    "value": [
        {
            "id": "1adaf535-1e31-4e14-983f-2270408162bf"
        }
    ]
}
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
```

