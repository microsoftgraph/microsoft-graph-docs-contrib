---
title: "Create deviceLink"
description: "Create a Branch site with deviceLinks"
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Create deviceLink
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a Branch site with deviceLinks

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

To make changes, the calling user must also be in one of the following [Azure AD roles](https://learn.microsoft.com/azure/active-directory/roles/permissions-reference):

* Global Secure Access Administrator
* Security Administrator
* Global Administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /networkAccess/branches/{branchSiteId}/deviceLinks
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [microsoft.graph.networkaccess.deviceLink](../resources/networkaccess-devicelink.md) object.

You can specify the following properties when creating a **deviceLink**.

|Property|Type|Description|
|:---|:---|:---|
|name|String|Represents the name or identifier associated with a device link Required.|
|ipAddress|String|Represents the IP address associated with a device link Required.|
|deviceVendor|microsoft.graph.networkaccess.deviceVendor|Represents the vendor or manufacturer of the device associated with a device link. The possible values are: `barracudaNetworks`, `checkPoint`, `ciscoMeraki`, `citrix`, `fortinet`, `hpeAruba`, `netFoundry`, `nuage`, `openSystems`, `paloAltoNetworks`, `riverbedTechnology`, `silverPeak`, `vmWareSdWan`, `versa`, `other`. Required.|
|lastModifiedDateTime|DateTimeOffset|Represents the date and time when the device link was last modified Required.|
|tunnelConfiguration|[microsoft.graph.networkaccess.tunnelConfiguration](../resources/networkaccess-tunnelconfiguration.md)|Represents the tunnel configuration settings associated with a device link Required.|
|bgpConfiguration|[microsoft.graph.networkaccess.bgpConfiguration](../resources/networkaccess-bgpconfiguration.md)|Represents the Border Gateway Protocol (BGP) configuration settings associated with a device link Required.|



## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.networkaccess.deviceLink](../resources/networkaccess-devicelink.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_devicelink_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/networkAccess/branches/{branchSiteId}/deviceLinks

{
    "name": "Branch test",
    "country": "Israel",
    "region": "Center",
    "deviceLinks": [
        {
            "name": "CPE1",
            "ipAddress": "20.125.118.219",
            "bgpConfiguration": {
                "ipAddress": "172.16.11.5",
                "asn": 10
            },
            "deviceVendor": "citrix",
            "tunnelConfiguration": {
                "@odata.type": "#microsoft.graph.networkaccess.tunnelConfigurationIKEv2Default",
                "preSharedKey": "Detective5OutgrowDiligence"
            }
        },
        {
            "name": "CPE2",
            "ipAddress": "20.125.113.146",
            "bgpConfiguration": {
                "ipAddress": "172.16.11.4",
                "asn": 10
            },
            "deviceVendor": "citrix",
            "tunnelConfiguration": {
                "@odata.type": "#microsoft.graph.networkaccess.tunnelConfigurationIKEv2Default",
                "preSharedKey": "Detective5OutgrowDiligence"
            }
        }
    ],
    "bandwidthCapacity": 250
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.deviceLink"
}
-->
``` http
HTTP/1.1 201 Created

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/branches/$entity",
    "id": "1a4294bc-9467-4003-9d43-8edf14cbfa71",
    "name": "Moshe & Yuval test",
    "country": "Israel",
    "region": "Center",
    "version": "1.0.0",
    "bandwidthCapacity": 250,
    "lastModifiedDateTime": "2023-05-24T08:27:37Z"
}
```


