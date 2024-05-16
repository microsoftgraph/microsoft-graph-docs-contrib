---
title: "restorePoint: search"
description: "Search Restore Points for Protection Units."
author: "tushar20, manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# restorePoint: search

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Search Restore Points for Protection Units.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "restorepoint-search-permissions"
}
-->
<!-- [!INCLUDE [permissions-table](../includes/permissions/restorepoint-search-permissions.md)] -->

|Permission type|Least privileged permission|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|BackupRestore-Search.Read.All|BackupRestore-Search.Read.All|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|BackupRestore-Search.Read.All|BackupRestore-Search.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/restorePoints/search
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|protectionUnitIds|String collection|The unique identitifer of the Protection Unit|
|protectionTimePeriod|[timePeriod](../resources/timeperiod.md)|The time of creation of the Protection Unit|
|restorePointPreference|[restorePointPreference](../api/restorepoint-search.md#restorepointpreference-values)|Describes the preference to get Restore Point. The possible values are `oldest`, `latest`|
|tags|[restorePointTags](../resources/restorepoint.md#restorepointtags-values)|Tag to get Restore Point type. The possible values are `None`, `FastRestore`, `UnknownFutureValue`|

### restorePointPreference values
|Member | Description |
|:------|:------------|
|latest | Returns the latest restore point for a given protection timeperiod |
|oldest | Returns the oldest restore point for a given protection timeperiod |

## Response

If successful, this action returns a `200 OK` response code and a [restorePointSearchResponse](../resources/restorepointsearchresponse.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "restorepoint_search"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/restorePoints/search
Content-Type: application/json

{
  "protectionUnitIds": [
    "String"
  ],
  "protectionTimePeriod": {
    "@odata.type": "microsoft.graph.timePeriod"
  },
  "restorePointPreference": "String",
  "tags": "String"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.backupRestore.restorePointSearchResponse"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "microsoft.graph.restorePointSearchResponse"
  }
}
```

