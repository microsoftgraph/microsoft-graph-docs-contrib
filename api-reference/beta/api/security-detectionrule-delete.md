---
title: "Delete detectionRule"
description: "Delete a microsoft.graph.security.detectionRule object."
author: "mmekler"
ms.localizationpriority: medium
ms.prod: "*security"
doc_type: apiPageType
---

# Delete detectionRule
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [Custom Detection Rule](../resources/security-detectionrule.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type| Permissions (from least to most privileged) |
|:---|:--------------------------------------------|
|Delegated (work or school account)| CustomDetection.ReadWrite.All               |
|Delegated (personal Microsoft account)| Not supported.                              |
|Application| CustomDetection.ReadWrite.All               |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /security/rules/detectionRules/{ruleId}
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
  "name": "delete_detectionrule"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/security/rules/detectionRules/302
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

