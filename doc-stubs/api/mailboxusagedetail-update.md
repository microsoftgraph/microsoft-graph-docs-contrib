---
title: "Update mailboxUsageDetail"
description: "Update the properties of a mailboxUsageDetail object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update mailboxUsageDetail
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [mailboxUsageDetail](../resources/mailboxusagedetail.md) object.

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
PATCH /mailboxUsageDetail
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
|userPrincipalName|String|**TODO: Add Description** Optional.|
|displayName|String|**TODO: Add Description** Optional.|
|isDeleted|Boolean|**TODO: Add Description** Optional.|
|deletedDate|Date|**TODO: Add Description** Optional.|
|createdDate|Date|**TODO: Add Description** Optional.|
|lastActivityDate|Date|**TODO: Add Description** Optional.|
|itemCount|Int64|**TODO: Add Description** Optional.|
|storageUsedInBytes|Int64|**TODO: Add Description** Optional.|
|deletedItemCount|Int64|**TODO: Add Description** Optional.|
|deletedItemSizeInBytes|Int64|**TODO: Add Description** Optional.|
|issueWarningQuotaInBytes|Int64|**TODO: Add Description** Optional.|
|prohibitSendQuotaInBytes|Int64|**TODO: Add Description** Optional.|
|prohibitSendReceiveQuotaInBytes|Int64|**TODO: Add Description** Optional.|
|reportPeriod|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [mailboxUsageDetail](../resources/mailboxusagedetail.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_mailboxusagedetail"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/mailboxUsageDetail
Content-Type: application/json
Content-length: 563

{
  "@odata.type": "#microsoft.graph.mailboxUsageDetail",
  "reportRefreshDate": "Date",
  "userPrincipalName": "String",
  "displayName": "String",
  "isDeleted": "Boolean",
  "deletedDate": "Date",
  "createdDate": "Date",
  "lastActivityDate": "Date",
  "itemCount": "Integer",
  "storageUsedInBytes": "Integer",
  "deletedItemCount": "Integer",
  "deletedItemSizeInBytes": "Integer",
  "issueWarningQuotaInBytes": "Integer",
  "prohibitSendQuotaInBytes": "Integer",
  "prohibitSendReceiveQuotaInBytes": "Integer",
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
  "@odata.type": "#microsoft.graph.mailboxUsageDetail",
  "id": "97c3c90e-c90e-97c3-0ec9-c3970ec9c397",
  "reportRefreshDate": "Date",
  "userPrincipalName": "String",
  "displayName": "String",
  "isDeleted": "Boolean",
  "deletedDate": "Date",
  "createdDate": "Date",
  "lastActivityDate": "Date",
  "itemCount": "Integer",
  "storageUsedInBytes": "Integer",
  "deletedItemCount": "Integer",
  "deletedItemSizeInBytes": "Integer",
  "issueWarningQuotaInBytes": "Integer",
  "prohibitSendQuotaInBytes": "Integer",
  "prohibitSendReceiveQuotaInBytes": "Integer",
  "reportPeriod": "String"
}
```

