---
title: "Get branchConnectivityConfiguration"
description: "Retrieve the IPSec tunnel configuration required to establish a bidirectional communication link between your organization's router and Microsoft's gateway."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: global-secure-access
doc_type: apiPageType
---

# Get branchConnectivityConfiguration
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the IPSec tunnel configuration required to establish a bidirectional communication link between your organization's router and Microsoft's gateway. This information is vital for configuring your router (customer premise equipment) after creating a [deviceLink](../resources/networkaccess-devicelink.md).

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
GET /networkAccess/connectivity/branches/{branchSiteId}/connectivityConfiguration
```

## Optional query parameters
This method does not supports OData query parameters.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.branchConnectivityConfiguration](../resources/networkaccess-branchconnectivityconfiguration.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_branchconnectivityconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/connectivity/branches/{branchSiteId}/connectivityConfiguration
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.branchConnectivityConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "http://graph.microsoft.com/beta/$metadata#branchConnectivityConfiguration",
    "branchId": "19a92090-c14e-4cea-a933-27d38f72c4d1",
    "branchName": "Seattle branch office",
    "links": [
        {
            "id": "26b92330-c246-2cef-a131-27d38f72c4s4",
            "displayName": "CPE1",
            "localConfigurations": [
                {
                    "endpoint": "20.*.*.*",
                    "asn": 65532,
                    "bgpAddress": "192.168.1.*",
                    "region": "eastUS"
                },
                {
                    "endpoint": "20.*.*.*",
                    "asn": 65532,
                    "bgpAddress": "192.168.1.*",
                    "region": "westUS"
                }
            ],
            "peerConfiguration": {
                "endpoint": "120.*.*.*",
                "asn": 65530,
                "bgpAddress": "10.*.*.*"
            }
        }
    ]
}
```

