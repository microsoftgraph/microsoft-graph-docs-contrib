---
title: "List forwardingPolicies"
description: "Retrieve a list of forwarding policies associated with a specific traffic forwarding profile."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
ms.date: 04/04/2024
---

# List forwardingPolicies
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of forwarding policies associated with a specific traffic forwarding profile.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_networkaccessroot_list_forwardingpolicies" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-networkaccessroot-list-forwardingpolicies-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/forwardingPolicies
```

## Optional query parameters
This method does not support any OData query parameters.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.networkaccess.forwardingPolicy](../resources/networkaccess-forwardingpolicy.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_forwardingpolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/{forwardingProfileId}/forwardingPolicies
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.forwardingPolicy)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/forwardingProfiles('a5bb6d50-dbe3-4767-b883-12e1a915bc53')/policies",
    "value": [
        {
            "@odata.type": "#microsoft.graph.networkaccess.forwardingPolicyLink",
            "id": "3ef2446f-7ddf-4e80-af04-821534489155",
            "state": "enabled",
            "version": "1.0.0",
            "policy": {
                "@odata.type": "#microsoft.graph.networkaccess.forwardingPolicy",
                "id": "81e6666b-dcf3-4ee6-9212-adb12df18dab",
                "name": "Exchange Online",
                "description": "These properties represent Exchange Online endpoints that should be reachable to use the service.",
                "version": "1.0.0",
                "trafficForwardingType": "m365"
            }
        },
        {
            "@odata.type": "#microsoft.graph.networkaccess.forwardingPolicyLink",
            "id": "c0eea492-85f4-4eab-b03a-3a5abb459096",
            "state": "enabled",
            "version": "1.0.0",
            "policy": {
                "@odata.type": "#microsoft.graph.networkaccess.forwardingPolicy",
                "id": "d8929d18-b24a-4a67-8c7b-1483029855a0",
                "name": "SharePoint Online and OneDrive for Business",
                "description": "These properties represent SharePoint Online and OneDrive for Business endpoints that should be reachable to use the service.",
                "version": "1.0.0",
                "trafficForwardingType": "m365"
            }
        },
        {
            "@odata.type": "#microsoft.graph.networkaccess.forwardingPolicyLink",
            "id": "caaa9df8-240c-4db1-ad34-0c9b5ca06918",
            "state": "enabled",
            "version": "1.0.0",
            "policy": {
                "@odata.type": "#microsoft.graph.networkaccess.forwardingPolicy",
                "id": "c67e7847-feab-4b13-8163-88c0bac70ad0",
                "name": "Microsoft 365 Common and Office Online",
                "description": "These properties represent Microsoft 365 Common and Office Online endpoints that should be reachable to use the service.",
                "version": "1.0.0",
                "trafficForwardingType": "m365"
            }
        }
    ]
}
```

