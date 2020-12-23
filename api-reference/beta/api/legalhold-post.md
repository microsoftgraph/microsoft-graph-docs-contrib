---
title: "Create legalhold"
description: "Create a new legalhold object."
localization_priority: Normal
author: "mahage-msft"
ms.prod: "compliance"
doc_type: apiPageType
---

# Create legalhold
Namespace: microsoft.graph

Create a new [legalhold](../resources/legalhold.md) object.

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
POST https://graph.microsoft.com/beta/compliance/ediscovery/cases/{caseId}/legalholds
Content-Type: application/json
Content-length: 295

{
  "displayName": "Investigation legal hold"
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

<!-- TODO: NEED TO UPDATE WITH REAL-FAKE DATA-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.legalhold",
  "id": "700cd868-d868-700c-68d8-0c7068d80c70",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "isEnabled": "Boolean",
  "status": "String",
  "contentQuery": "String",
  "errors": [
    "String"
  ],
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```
