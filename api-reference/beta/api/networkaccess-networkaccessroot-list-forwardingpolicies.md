---
title: "List forwardingPolicies"
description: "Get a list of the microsoft.graph.networkaccess.forwardingPolicy objects and their properties."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# List forwardingPolicies
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [microsoft.graph.networkaccess.forwardingPolicy](../resources/networkaccess-forwardingpolicy.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

To read the configuration, the calling user must also be in one of the following [Azure AD roles](https://learn.microsoft.com/azure/active-directory/roles/permissions-reference):

* Global reader
* Global Secure Access Administrator
* Security Administrator
* Global Administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/forwardingPolicies
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [forwardingPolicy](../resources/forwardingpolicy.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_forwardingpolicy"
}
-->
``` http
GET /networkAccess/{forwardingProfileId}/forwardingPolicies
```


### Response
The following is an example of the response
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

