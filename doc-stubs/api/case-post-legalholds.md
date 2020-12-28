---
title: "Create legalhold"
description: "Create a new legalhold object."
author: "mahage-msft"
localization_priority: Normal
ms.prod: "compliance"
doc_type: resourcePageType
---

# Create legalhold

Namespace: microsoft.graph.ediscovery

Create a new legalhold object.

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
POST /compliance/ediscovery/cases/{caseId}/legalholds
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [legalhold](../resources/legalhold.md) object.

The following table shows the properties that are required when you create the [legalhold](../resources/legalhold.md).

|Property|Type|Description|
|:---|:---|:---|
|displayName|String| The display name of the legal hold. |

## Response

If successful, this method returns a `201 Created` response code and a [legalhold](../resources/legalhold.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "create_legalhold_from_"
}
-->

``` http
POST https://graph.microsoft.com/beta/compliance/ediscovery/cases/99e865fc-e29f-479a-ba83-9e58eb017103/legalholds
Content-Type: application/json
Content-length: 295

{
  "displayName": "my first legalhold"
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
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#compliance/ediscovery/cases/99e865fc-e29f-479a-ba83-9e58eb017103/legalholds/$entity",
    "description": "",
    "lastModifiedDateTime": "2020-12-28T23:33:13.337Z",
    "isEnabled": true,
    "status": "Pending",
    "contentQuery": "",
    "errors": [],
    "id": "2a523442-cfe7-41a9-aa54-0c14ae0d7daa",
    "displayName": "my first legalhold",
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
