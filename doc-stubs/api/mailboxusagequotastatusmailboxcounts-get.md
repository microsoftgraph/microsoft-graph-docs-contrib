---
title: "Get mailboxUsageQuotaStatusMailboxCounts"
description: "Read the properties and relationships of a mailboxUsageQuotaStatusMailboxCounts object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get mailboxUsageQuotaStatusMailboxCounts
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [mailboxUsageQuotaStatusMailboxCounts](../resources/mailboxusagequotastatusmailboxcounts.md) object.

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
GET /mailboxUsageQuotaStatusMailboxCounts
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [mailboxUsageQuotaStatusMailboxCounts](../resources/mailboxusagequotastatusmailboxcounts.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_mailboxusagequotastatusmailboxcounts"
}
-->
``` http
GET https://graph.microsoft.com/beta/mailboxUsageQuotaStatusMailboxCounts
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailboxUsageQuotaStatusMailboxCounts"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
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
}
```

