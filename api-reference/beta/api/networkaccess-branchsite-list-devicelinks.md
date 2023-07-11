---
title: "List deviceLinks"
description: "Retrieve a list of device links associated with a specific branch."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# List deviceLinks
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of device links associated with a specific branch.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccessPolicy.Read.All, NetworkAccessPolicy.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/connectivity/branches/{branchSiteId}/deviceLinks
```

## Optional query parameters

This method supports the `$expand` [OData query parameters](/graph/query-parameters) to help customize the response.


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.networkaccess.deviceLink](../resources/networkaccess-devicelink.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_devicelink"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/connectivity/branches/{branchSiteId}/deviceLinks
```


### Response
The following is an example of the response.
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
  "value": [
    {
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/branches('047d69c4-2448-45cc-8c0a-40f3ad93c86c')/deviceLinks",
    "value": [
        {
            "id": "1030ca77-40e9-4cd3-bf71-b5d74c2f3cb0",
            "name": "MainLink",
            "ipAddress": "24.123.22.168",
            "version": "1.0.0",
            "deviceVendor": "checkPoint",
            "lastModifiedDateTime": "2023-05-23T09:04:41Z",
            "bgpConfiguration": {
                "ipAddress": "1.128.24.22",
                "asn": 4
            },
            "tunnelConfiguration": {
                "@odata.type": "#microsoft.graph.networkaccess.tunnelConfigurationIKEv2Default",
                "preSharedKey": "342342342342342342342342"
            }
        }
    ]
}
  ]
}
```


