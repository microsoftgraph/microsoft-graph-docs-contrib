---
title: "Update custodian"
description: "Update the properties of a custodian object."
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: apiPageType
---

# Update custodian

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [custodian](../resources/ediscovery-custodian.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|eDiscovery.Read.All, eDiscovery.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
PATCH /compliance/ediscovery/cases/{caseId}/custodians/{custodianId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [custodian](../resources/ediscovery-custodian.md) object.

The following table lists the properties of a [custodian](../resources/ediscovery-custodian.md) object that can be modified.

None

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "update_custodian"
}
-->

``` http
PATCH https://graph.microsoft.com/beta/compliance/ediscovery/cases/2192ca408ea2410eba3bec8ae873be6b/custodians/45454331323337443946343043464239
Content-Type: application/json
Content-length: 254

{
  "applyHoldToSources": "false",
}
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.ediscovery.custodian"
}
-->

``` http
HTTP/1.1 204 No Content
```
