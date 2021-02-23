---
title: Delete taskDefinition
description: Delete a task definition.
author: nilakhan      
localization_priority: Normal
ms.prod: cloud-printing
doc_type: apiPageType
---

# Delete printTaskDefinition
Namespace: microsoft.graph

Delete a **taskDefinition**.

For details about how to use this API to add pull printing support to Universal Print, see [Extending Universal Print to support pull printing](/graph/universal-print-concept-overview#extending-universal-print-to-support-pull-printing).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

In addition to the following permissions, the user's tenant must have an active Universal Print subscription.

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| Not supported. |
|Delegated (personal Microsoft account)|Not Supported.|
|Application| PrintTaskDefinition.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /print/taskDefinitions/{printTaskDefinitionId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "delete_printtaskdefinition"
}
-->
# [HTTP](#tab/http)
``` http
DELETE https://graph.microsoft.com/v1.0/print/taskDefinitions/{printTaskDefinitionId}
```


### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

