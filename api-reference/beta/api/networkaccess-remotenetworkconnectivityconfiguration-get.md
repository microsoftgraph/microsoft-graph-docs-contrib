---
title: "Get remoteNetworkConnectivityConfiguration"
description: "Retrieve the IPSec tunnel configuration required to establish a bidirectional communication link between your organization's router and Microsoft's gateway."
author: abhijeetsinha
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
---

# Get remoteNetworkConnectivityConfiguration
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the IPSec tunnel configuration required to establish a bidirectional communication link between your organization's router and the Microsoft gateway. This information is vital for configuring your router (customer premise equipment) after creating a [deviceLink](../resources/networkaccess-devicelink.md). Refer to [Configure customer premises equipment for Global Secure Access](/entra/global-secure-access/how-to-configure-customer-premises-equipment?tabs=microsoft-entra-admin-center) to understand how to use this information to set up your router.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-remotenetworkconnectivityconfiguration-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-remotenetworkconnectivityconfiguration-get-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/connectivity/remoteNetworks/{remoteNetworkId}/connectivityConfiguration
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.remoteNetworkConnectivityConfiguration](../resources/networkaccess-remotenetworkconnectivityconfiguration.md) object in the response body.

## Examples

### Request
The following example shows a request.

``` http
GET https://graph.microsoft.com/beta/networkAccess/connectivity/remoteNetworks/dc6a7efd-6b2b-4c6a-84e7-5dcf97e62e04/connectivityConfiguration
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.remoteNetworkConnectivityConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/remoteNetworks('4ecfc62c-ec85-42fd-af37-5a93c7deb1d9')/connectivityConfiguration/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET networkAccess/connectivity/remoteNetworks('<guid>')/connectivityConfiguration?$select=remoteNetworkId,remoteNetworkName",
    "remoteNetworkId": "4ecfc62c-ec85-42fd-af37-5a93c7deb1d9",
    "remoteNetworkName": "Abhijeet Azure VNG",
    "links@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/remoteNetworks('4ecfc62c-ec85-42fd-af37-5a93c7deb1d9')/connectivityConfiguration/links",
    "links": [
        {
            "id": "109376bf-6dc7-4183-ab11-4a1206fb5e90",
            "displayName": "VNG",
            "localConfigurations": [
                {
                    "endpoint": "20.245.111.21",
                    "asn": 65476,
                    "bgpAddress": "192.168.1.2",
                    "region": "westUS"
                },
                {
                    "endpoint": "20.245.111.77",
                    "asn": 65476,
                    "bgpAddress": "192.168.1.3",
                    "region": "westUS"
                }
            ],
            "peerConfiguration": {
                "endpoint": "20.172.65.16",
                "asn": 65533,
                "bgpAddress": "10.0.2.5"
            }
        }
    ]
}
```

