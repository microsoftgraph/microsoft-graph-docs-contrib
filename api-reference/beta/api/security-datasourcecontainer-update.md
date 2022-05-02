---
title: "Update dataSourceContainer"
description: "Update the properties of a dataSourceContainer object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update dataSourceContainer
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [dataSourceContainer](../resources/security-datasourcecontainer.md) object.

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
PATCH /dataSourceContainer
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
|status|dataSourceContainerStatus|**TODO: Add Description**. The possible values are: `active`, `released`, `unknownFutureValue`. Optional.|
|holdStatus|dataSourceHoldStatus|**TODO: Add Description**. The possible values are: `notApplied`, `applied`, `applying`, `removing`, `partial`, `unknownFutureValue`. Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|releasedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|displayName|String|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [dataSourceContainer](../resources/security-datasourcecontainer.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_datasourcecontainer"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/dataSourceContainer
Content-Type: application/json
Content-length: 193

{
  "@odata.type": "#microsoft.graph.security.dataSourceContainer",
  "status": "String",
  "holdStatus": "String",
  "releasedDateTime": "String (timestamp)",
  "displayName": "String"
}
```


### Response
The following is an example of the response
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
  "@odata.type": "#microsoft.graph.security.dataSourceContainer",
  "id": "e475d031-58e6-749a-a3e0-515cc96cbafc",
  "status": "String",
  "holdStatus": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "releasedDateTime": "String (timestamp)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```

