---
title: "Update forwardingRule"
description: "Update a microsoft.graph.networkaccess.forwardingRule object."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Update forwardingRule
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update a [microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccess.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported|
|Application|NetworkAccess.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH networkAccess/forwardingPolicies/{policyId}/policyRules/{ruleId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
You can specify the following properties when updating a **forwarding rule**.

|Property|Type|Description|
|:---|:---|:---|
|action|String|Action for the traffic, possible values are "Forwaed" or "Bypass". Required.|


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "delete_forwardingrule"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/NetworkAccess/forwardingPolicies/{policyId}/policyRules/{ruleId}
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


