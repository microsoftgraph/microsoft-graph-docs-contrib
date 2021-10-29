---
title: "Update mailboxUsageMailboxCounts"
description: "Update the properties of a mailboxUsageMailboxCounts object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update mailboxUsageMailboxCounts
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [mailboxUsageMailboxCounts](../resources/mailboxusagemailboxcounts.md) object.

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
PATCH /mailboxUsageMailboxCounts
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
|total|Int64|**TODO: Add Description** Optional.|
|active|Int64|**TODO: Add Description** Optional.|
|reportDate|Date|**TODO: Add Description** Optional.|
|reportPeriod|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [mailboxUsageMailboxCounts](../resources/mailboxusagemailboxcounts.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_mailboxusagemailboxcounts"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/mailboxUsageMailboxCounts
Content-Type: application/json
Content-length: 200

{
  "@odata.type": "#microsoft.graph.mailboxUsageMailboxCounts",
  "reportRefreshDate": "Date",
  "total": "Integer",
  "active": "Integer",
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
  "@odata.type": "#microsoft.graph.mailboxUsageMailboxCounts",
  "id": "45f0bd91-bd91-45f0-91bd-f04591bdf045",
  "reportRefreshDate": "Date",
  "total": "Integer",
  "active": "Integer",
  "reportDate": "Date",
  "reportPeriod": "String"
}
```

