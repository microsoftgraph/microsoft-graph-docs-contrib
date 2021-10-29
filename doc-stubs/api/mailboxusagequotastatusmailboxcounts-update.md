---
title: "Update mailboxUsageQuotaStatusMailboxCounts"
description: "Update the properties of a mailboxUsageQuotaStatusMailboxCounts object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update mailboxUsageQuotaStatusMailboxCounts
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [mailboxUsageQuotaStatusMailboxCounts](../resources/mailboxusagequotastatusmailboxcounts.md) object.

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
PATCH /mailboxUsageQuotaStatusMailboxCounts
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
|underLimit|Int64|**TODO: Add Description** Optional.|
|warningIssued|Int64|**TODO: Add Description** Optional.|
|sendProhibited|Int64|**TODO: Add Description** Optional.|
|sendReceiveProhibited|Int64|**TODO: Add Description** Optional.|
|indeterminate|Int64|**TODO: Add Description** Optional.|
|reportDate|Date|**TODO: Add Description** Optional.|
|reportPeriod|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [mailboxUsageQuotaStatusMailboxCounts](../resources/mailboxusagequotastatusmailboxcounts.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_mailboxusagequotastatusmailboxcounts"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/mailboxUsageQuotaStatusMailboxCounts
Content-Type: application/json
Content-length: 325

{
  "@odata.type": "#microsoft.graph.mailboxUsageQuotaStatusMailboxCounts",
  "reportRefreshDate": "Date",
  "underLimit": "Integer",
  "warningIssued": "Integer",
  "sendProhibited": "Integer",
  "sendReceiveProhibited": "Integer",
  "indeterminate": "Integer",
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
  "@odata.type": "#microsoft.graph.mailboxUsageQuotaStatusMailboxCounts",
  "id": "e5d6d733-d733-e5d6-33d7-d6e533d7d6e5",
  "reportRefreshDate": "Date",
  "underLimit": "Integer",
  "warningIssued": "Integer",
  "sendProhibited": "Integer",
  "sendReceiveProhibited": "Integer",
  "indeterminate": "Integer",
  "reportDate": "Date",
  "reportPeriod": "String"
}
```

