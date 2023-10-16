---
title: "Delete filteringRule"
description: "Delete a microsoft.graph.networkaccess.filteringRule object."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Delete filteringRule
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccessPolicy.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /networkaccess/filteringPolicies/{filteringPolicyId}/policyRules/{filteringRuleId}

```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "delete_filteringrule"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/networkaccess/filteringPolicies/bb1d249e-0691-477c-aae4-adfca179746a/policyRules/67f2edf8-1dc0-4a4f-87ea-9117541646de

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

