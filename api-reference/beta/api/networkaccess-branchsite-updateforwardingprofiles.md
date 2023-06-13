---
title: "Update branch and forwardingProfile"
description: "Attach a forwarding profile to Branch"
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Create forwardingProfile
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Attach a forwarding profile to Branch

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccess.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported|
|Application|NetworkAccess.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /networkAccess/branches/{branchSiteId}/forwardingProfiles
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) object.

You can specify the following properties when creating a **forwardingProfile**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|associations|[microsoft.graph.networkaccess.association](../resources/networkaccess-association.md) collection|forwarding profile Id. Required.|




## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_forwardingprofile_from_"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/networkAccess/branches/{branchSiteId}/forwardingProfiles
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
HTTP/1.1 200 OK
```


