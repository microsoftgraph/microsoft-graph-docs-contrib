---
title: "List forwardingProfiles (for a remote network)"
description: "Retrieve a list of traffic forwarding profiles associated with a remote network."
author: abhijeetsinha
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
---

# List forwardingProfiles (for a remote network)
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of traffic forwarding profiles associated with a remote network.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-remotenetwork-list-forwardingprofiles-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-remotenetwork-list-forwardingprofiles-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/connectivity/remoteNetworks/{remoteNetworkId}/forwardingProfiles
```

## Optional query parameters
This method does not support any OData query parameters.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [forwardingProfile](../resources/networkaccess-forwardingprofile.md) objects in the response body.

## Examples

### Request
The following is an example of a request.

``` http
GET https://graph.microsoft.com/beta/networkAccess/connectivity/remoteNetworks/dc6a7efd-6b2b-4c6a-84e7-5dcf97e62e04/forwardingProfiles
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.forwardingProfile)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "http://graph.microsoft.com/beta/networkAccess/$metadata#forwardingProfiles",
    "value": [
        {
            "id": "19a92090-c14e-4cea-a933-27d38f72c4d1",
            "name": "forwardingProfile 1",
            "description": "some description",
            "state": "disabled",
            "version": "13",
            "lastModifiedDate": "2022-06-13T08:22:14Z",
            "trafficForwardingType": "m365",
            "priority": 500,
            "associations" : [
                {
                 "@odata.type": "microsoft.graph.networkAccess.AssociatedBranch",
                 "branchId": "19a92090-c14e-4cea-a933-27d38f72c64s"
                }                
            ],
        }       
    ]
}
``` 

