---
title: "Get forwardingPolicy"
description: "Read the properties and relationships of a microsoft.graph.networkaccess.forwardingPolicy object."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Get forwardingPolicy
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [microsoft.graph.networkaccess.forwardingPolicy](../resources/networkaccess-forwardingpolicy.md) object.

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
GET /networkAccess/forwardingPolicies/{forwardingPolicyId}
```

## Optional query parameters
This method supports the $expand [OData query parameters](https://learn.microsoft.com/en-us/graph/query-parameters) to help customize the response.

|Pattern|Syntax|Notes
|:---|:---|:---|
|expand|/networkAccess/forwardingPolicies?$expand=policyRules	|first level|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.forwardingPolicy](../resources/networkaccess-forwardingpolicy.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_forwardingpolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/forwardingPolicies/{forwardingPolicyId}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.forwardingPolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/forwardingPolicies/$entity",
    "id": "81e6666b-dcf3-4ee6-9212-adb12df18dab",
    "name": "Exchange Online",
    "description": "These properties represent Exchange Online endpoints that should be reachable to use the service.",
    "version": "1.0.0",
    "trafficForwardingType": "m365"
}
```


