---
title: "Update trustFrameworkKey_v2"
description: "Update the properties of a trustFrameworkKey_v2 object."
author: "gysingh"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update trustFrameworkKey_v2

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [trustFrameworkKey_v2](../resources/trustframeworkkey_v2.md) object. Only Status Property is allowed to update from this request.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "trustframeworkkey_v2-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/trustframeworkkey_v2-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /trustFramework/keySets/{trustFrameworkKeySetId}/keys_v2/{trustFrameworkKey_v2Id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|status|trustFrameworkKeyStatus|Status of the key. The possible values are: `enabled`, `disabled`, `unknownFutureValue`. Optional.|

## Response

If successful, this method returns a `204 No Content` response code and an updated [trustFrameworkKey_v2](../resources/trustframeworkkey_v2.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_trustframeworkkey_v2"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/trustFramework/keySets/{trustFrameworkKeySetId}/keys_v2/aTREvwojOB9ph3fr2r6eTf_5eD5fmQsfsapVMwYI3o
Content-Type: application/json

{
  "status": "enabled"
}
```


### Response

The following example shows the response.

- > **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
