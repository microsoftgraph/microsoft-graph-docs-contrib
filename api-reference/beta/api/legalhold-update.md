---
title: "Update legalhold"
description: "Update the properties of a legalhold object."
localization_priority: Normal
author: "mahage-msft"
ms.prod: "ediscovery"
doc_type: apiPageType
---

# Update legalhold

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [legalhold](../resources/legalhold.md) object.

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
PATCH /compliance/ediscovery/cases/{caseId}/legalholds/{legalholdId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [legalhold](../resources/legalhold.md) object.

The following table shows the properties that are required when you update the [legalhold](../resources/legalhold.md).

None

## Response

If successful, this method returns a `200 OK` response code and an updated [legalhold](../resources/legalhold.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "update_legalhold"
}
-->

``` http
PATCH https://graph.microsoft.com/beta/compliance/ediscovery/cases/{caseId}/legalholds/{legalholdId}
Content-Type: application/json
Content-length: 295

{
  "description": "This is a description for a legalhold"
}
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.legalhold"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#compliance/ediscovery/cases('99e865fc-e29f-479a-ba83-9e58eb017103')/legalholds/$entity",
    "description": "This is a description for a legalhold",
    "lastModifiedDateTime": "2020-12-29T01:00:26.193Z",
    "isEnabled": true,
    "status": "Pending",
    "contentQuery": "",
    "errors": [],
    "id": "2a523442-cfe7-41a9-aa54-0c14ae0d7daa",
    "displayName": "My first legal hold",
    "createdDateTime": "2020-12-28T23:33:13.337Z",
    "createdBy": {
        "user": {
            "id": null,
            "displayName": "EDiscovery Admin"
        }
    },
    "lastModifiedBy": {
        "user": {
            "id": null,
            "displayName": "EDiscovery Admin"
        }
    }
}
```
