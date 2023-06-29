---
title: "Update branch and forwardingProfile"
description: "Attaching a forwarding profile to a specific branch establishes the configuration for routing and forwarding network traffic."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Update forwardingProfile assosication with a branch
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Attaching a forwarding profile to a specific branch establishes the configuration for routing and forwarding network traffic.

דייBy attaching a forwarding profile to a branch, developers can define how network traffic should be routed and forwarded within that specific branch. The forwarding profile allows customization of traffic handling based on various criteria such as source, destination, protocol, or port.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccessPolicy.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /networkAccess/connectivity/branches/{branchSiteId}/forwardingProfiles
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
|associations|[microsoft.graph.networkaccess.association](../resources/networkaccess-association.md) collection|The forwarding profile collection represents a group of multiple forwarding profiles. Required.|




## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_forwardingprofile_from_"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/networkAccess/connectivity/branches/{branchSiteId}/forwardingProfiles

{
    "@context": "#$delta",
    "value": [
        {
            "id": "8a263132-cea1-4435-b255-0c7ab024e3ad"
        }
    ]
}
```

### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.forwardingProfile"
}
-->
``` http
HTTP/1.1 204 No Content
```


