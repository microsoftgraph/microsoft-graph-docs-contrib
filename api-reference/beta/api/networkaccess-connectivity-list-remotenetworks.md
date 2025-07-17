---
title: "List remoteNetworks"
description: "Retrieve a list of remote networks within a tenant connected to the Global Secure Access."
author: abhijeetsinha
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
ms.date: 06/21/2024
---

# List remoteNetworks
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of remote networks within a tenant connected to the Global Secure Access services.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-connectivity-list-remotenetworks-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-connectivity-list-remotenetworks-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/connectivity/remoteNetworks
```

## Optional query parameters
This method supports the `$expand` and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.networkaccess.remoteNetwork](../resources/networkaccess-remotenetwork.md) objects in the response body.

## Examples

### Request
The following is an example of a request.

``` http
GET https://graph.microsoft.com/beta/networkAccess/connectivity/remoteNetworks
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.remoteNetwork)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/remoteNetworks",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET networkAccess/connectivity/remoteNetworks?$select=bandwidthCapacity,connectivityState",
    "value": [
        {
            "id": "dc6a7efd-6b2b-4c6a-84e7-5dcf97e62e04",
            "name": "Test branch",
            "region": "canadaEast",
            "version": "1.0.0",
            "lastModifiedDateTime": "2023-12-12T14:26:24Z",
            "forwardingProfiles@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/remoteNetworks('dc6a7efd-6b2b-4c6a-84e7-5dcf97e62e04')/forwardingProfiles",
            "forwardingProfiles": [
                {
                    "trafficForwardingType": "m365",
                    "priority": 0,
                    "id": "1adaf535-1e31-4e14-983f-2270408162bf",
                    "name": "Microsoft 365 traffic forwarding profile",
                    "description": "Default traffic forwarding profile for Microsoft 365 traffic acquisition. Assign the profile to client or branch offices to acquire Microsoft 365 traffic for Zero Trust Network Access.",
                    "state": "disabled",
                    "version": "1.0.0",
                    "lastModifiedDateTime": "2024-01-22T12:10:49Z",
                    "associations": [
                        {
                            "@odata.type": "#microsoft.graph.networkaccess.associatedBranch",
                            "branchId": "9ffbc1a5-2916-4fb4-b277-76cdc89cc491"
                        },
                        {
                            "@odata.type": "#microsoft.graph.networkaccess.associatedBranch",
                            "branchId": "dc6a7efd-6b2b-4c6a-84e7-5dcf97e62e04"
                        },
                        {
                            "@odata.type": "#microsoft.graph.networkaccess.associatedBranch",
                            "branchId": "43c7a0d3-1072-4da1-9e30-e513b02bb559"
                        },
                        {
                            "@odata.type": "#microsoft.graph.networkaccess.associatedBranch",
                            "branchId": "4ecfc62c-ec85-42fd-af37-5a93c7deb1d9"
                        }
                    ]
                }
            ],
            "deviceLinks@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/remoteNetworks('dc6a7efd-6b2b-4c6a-84e7-5dcf97e62e04')/deviceLinks",
            "deviceLinks": [
                {
                    "id": "47aab2e9-7f5c-42ba-bbfc-1b049193126a",
                    "name": "name",
                    "ipAddress": "1.2.3.1",
                    "bandwidthCapacityInMbps": "mbps500",
                    "deviceVendor": "barracudaNetworks",
                    "lastModifiedDateTime": "2023-12-12T14:26:24Z",
                    "bgpConfiguration": {
                        "localIpAddress": "10.1.1.1",
                        "peerIpAddress": "10.2.2.1",
                        "asn": 899
                    },
                    "redundancyConfiguration": {
                        "zoneLocalIpAddress": null,
                        "redundancyTier": "noRedundancy"
                    },
                    "tunnelConfiguration": {
                        "@odata.type": "#microsoft.graph.networkaccess.tunnelConfigurationIKEv2Default",
                        "preSharedKey": "dcf"
                    }
                }
            ]
        },
        {
            "id": "43c7a0d3-1072-4da1-9e30-e513b02bb559",
            "name": "USA branch 1",
            "region": "eastUS",
            "version": "1.0.0",
            "lastModifiedDateTime": "2024-01-17T19:23:32Z",
            "forwardingProfiles@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/remoteNetworks('43c7a0d3-1072-4da1-9e30-e513b02bb559')/forwardingProfiles",
            "forwardingProfiles": [
                {
                    "trafficForwardingType": "m365",
                    "priority": 0,
                    "id": "1adaf535-1e31-4e14-983f-2270408162bf",
                    "name": "Microsoft 365 traffic forwarding profile",
                    "description": "Default traffic forwarding profile for Microsoft 365 traffic acquisition. Assign the profile to client or branch offices to acquire Microsoft 365 traffic for Zero Trust Network Access.",
                    "state": "disabled",
                    "version": "1.0.0",
                    "lastModifiedDateTime": "2024-01-22T12:10:49Z",
                    "associations": [
                        {
                            "@odata.type": "#microsoft.graph.networkaccess.associatedBranch",
                            "branchId": "9ffbc1a5-2916-4fb4-b277-76cdc89cc491"
                        },
                        {
                            "@odata.type": "#microsoft.graph.networkaccess.associatedBranch",
                            "branchId": "dc6a7efd-6b2b-4c6a-84e7-5dcf97e62e04"
                        },
                        {
                            "@odata.type": "#microsoft.graph.networkaccess.associatedBranch",
                            "branchId": "43c7a0d3-1072-4da1-9e30-e513b02bb559"
                        },
                        {
                            "@odata.type": "#microsoft.graph.networkaccess.associatedBranch",
                            "branchId": "4ecfc62c-ec85-42fd-af37-5a93c7deb1d9"
                        }
                    ]
                }
            ],
            "deviceLinks@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/remoteNetworks('43c7a0d3-1072-4da1-9e30-e513b02bb559')/deviceLinks",
            "deviceLinks": [
                {
                    "id": "6833faf3-b4ea-4cd4-a256-3ee71985e51d",
                    "name": "Cisco device 1",
                    "ipAddress": "20.1.1.1",
                    "bandwidthCapacityInMbps": "mbps1000",
                    "deviceVendor": "ciscoMeraki",
                    "lastModifiedDateTime": "2024-01-17T19:23:32Z",
                    "bgpConfiguration": {
                        "localIpAddress": "10.1.1.2",
                        "peerIpAddress": "10.2.2.2",
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
    ]
}
```

