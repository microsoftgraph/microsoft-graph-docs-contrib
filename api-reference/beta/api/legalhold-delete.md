---
title: "Delete legalhold"
description: "Deletes a legalhold object."
author: "mahage-msft"
localization_priority: Normal
ms.prod: "compliance"
doc_type: "apiPageType"
---

# Delete legalhold

Namespace: microsoft.graph.ediscovery

Deletes a [legalhold](../resources/legalhold.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|eDiscovery.ReadWrite.All, eDiscovery.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|eDiscovery.ReadWrite.All, eDiscovery.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
DELETE /compliance/ediscovery/cases/{caseId}/legalholds/{legalholdId}
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

<!-- {
  "blockType": "request",
  "name": "delete_legalhold"
}
-->

``` http
DELETE https://graph.microsoft.com/beta/compliance/ediscovery/cases/{caseId}/legalholds/{legalholdId}
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
