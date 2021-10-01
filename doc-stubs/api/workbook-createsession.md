---
title: "workbook: createSession"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# workbook: createSession
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

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
POST /drive/activities/{itemActivityOLDId}/driveItem/workbook/createSession
POST /drives/{drivesId}/activities/{itemActivityOLDId}/driveItem/workbook/createSession
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|persistChanges|Boolean|**TODO: Add Description**|
|commitExplicitly|Boolean|**TODO: Add Description**|
|deferCoauthoringMerge|Boolean|**TODO: Add Description**|



## Response

If successful, this action returns a `200 OK` response code and a [workbookSessionInfo](../resources/workbooksessioninfo.md) in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "workbook_createsession"
}
-->
``` http
POST https://graph.microsoft.com/beta/drive/activities/{itemActivityOLDId}/driveItem/workbook/createSession
Content-Type: application/json
Content-length: 108

{
  "persistChanges": "Boolean",
  "commitExplicitly": "Boolean",
  "deferCoauthoringMerge": "Boolean"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookSessionInfo"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "microsoft.graph.workbookSessionInfo"
  }
}
```

