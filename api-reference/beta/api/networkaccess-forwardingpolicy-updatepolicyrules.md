---
title: "forwardingPolicy: updatePolicyRules"
description: "Update the forwarding rule within a forwarding profile."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-accessdoc_type: apiPageType
---

# forwardingPolicy: updatePolicyRules
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the forwarding rules within a forwarding profile.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccessPolicy.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /networkAccess/filteringPolicies/{id}/policyRules/{id}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|Id|[microsoft.graph.networkaccess.policyRuleDelta](../resources/networkaccess-policyrule.md)||
|action|String|Action for the traffic, possible values are "Forward" or "Bypass". Required.|


## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "forwardingpolicythis.updatepolicyrules"
}
-->
``` http
PATCH /networkAccess/filteringPolicies/{id}/policyRules/{id}
Content-Type: application/json

{
  "@odata.type":"microsoft.graph.networkAccess.m365ForwardingRule", 
  "action":"forward" 
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

