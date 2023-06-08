---
title: "Update deviceLink"
description: "Update the properties of a microsoft.graph.networkaccess.deviceLink object."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Update deviceLink
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [microsoft.graph.networkaccess.deviceLink](../resources/networkaccess-devicelink.md) object.

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
PATCH /networkAccess/branches/{branchSiteId}/deviceLinks/{deviceLinkId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|name|String|**TODO: Add Description** Required.|
|ipAddress|String|**TODO: Add Description** Required.|
|deviceVendor|microsoft.graph.networkaccess.deviceVendor|**TODO: Add Description**. The possible values are: `barracudaNetworks`, `checkPoint`, `ciscoMeraki`, `citrix`, `fortinet`, `hpeAruba`, `netFoundry`, `nuage`, `openSystems`, `paloAltoNetworks`, `riverbedTechnology`, `silverPeak`, `vmWareSdWan`, `versa`, `other`, `unknownFutureValue`. Required.|
|version|String|**TODO: Add Description** Required.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|tunnelConfiguration|[microsoft.graph.networkaccess.tunnelConfiguration](../resources/networkaccess-tunnelconfiguration.md)|**TODO: Add Description** Required.|
|bgpConfiguration|[microsoft.graph.networkaccess.bgpConfiguration](../resources/networkaccess-bgpconfiguration.md)|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.networkaccess.deviceLink](../resources/networkaccess-devicelink.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_devicelink"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/networkAccess/branches/{branchSiteId}/deviceLinks/{deviceLinkId}
Content-Type: application/json
{
    "name": "Backup Link"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```


