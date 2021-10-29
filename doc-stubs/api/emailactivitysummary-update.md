---
title: "Update emailActivitySummary"
description: "Update the properties of an emailActivitySummary object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update emailActivitySummary
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [emailActivitySummary](../resources/emailactivitysummary.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /emailActivitySummary
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|reportRefreshDate|Date|**TODO: Add Description** Optional.|
|send|Int64|**TODO: Add Description** Optional.|
|receive|Int64|**TODO: Add Description** Optional.|
|read|Int64|**TODO: Add Description** Optional.|
|reportDate|Date|**TODO: Add Description** Optional.|
|reportPeriod|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [emailActivitySummary](../resources/emailactivitysummary.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_emailactivitysummary"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/emailActivitySummary
Content-Type: application/json
Content-length: 217

{
  "@odata.type": "#microsoft.graph.emailActivitySummary",
  "reportRefreshDate": "Date",
  "send": "Integer",
  "receive": "Integer",
  "read": "Integer",
  "reportDate": "Date",
  "reportPeriod": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.emailActivitySummary",
  "id": "12a5d280-d280-12a5-80d2-a51280d2a512",
  "reportRefreshDate": "Date",
  "send": "Integer",
  "receive": "Integer",
  "read": "Integer",
  "reportDate": "Date",
  "reportPeriod": "String"
}
```

