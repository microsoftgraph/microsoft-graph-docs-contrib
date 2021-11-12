---
title: "Create richLongRunningOperation"
description: "Create a new richLongRunningOperation object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create richLongRunningOperation
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new richLongRunningOperation object.

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
POST /sites/{sitesId}/operations
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [richLongRunningOperation](../resources/richlongrunningoperation.md) object.

You can specify the following properties when creating a **richLongRunningOperation**.

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md). Optional.|
|lastActionDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md). Optional.|
|resourceLocation|String|**TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md). Optional.|
|status|longRunningOperationStatus|**TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md). The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`. Optional.|
|statusDetail|String|**TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md). Optional.|
|error|[publicError](../resources/synchronization-publicerror.md)|**TODO: Add Description** Optional.|
|percentageComplete|Int32|**TODO: Add Description** Optional.|
|resourceId|String|**TODO: Add Description** Optional.|
|type|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [richLongRunningOperation](../resources/richlongrunningoperation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_richlongrunningoperation_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/sites/{sitesId}/operations
Content-Type: application/json
Content-length: 352

{
  "@odata.type": "#microsoft.graph.richLongRunningOperation",
  "lastActionDateTime": "String (timestamp)",
  "resourceLocation": "String",
  "status": "String",
  "statusDetail": "String",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "percentageComplete": "Integer",
  "resourceId": "String",
  "type": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.richLongRunningOperation"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.richLongRunningOperation",
  "id": "a5761885-1885-a576-8518-76a5851876a5",
  "createdDateTime": "String (timestamp)",
  "lastActionDateTime": "String (timestamp)",
  "resourceLocation": "String",
  "status": "String",
  "statusDetail": "String",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "percentageComplete": "Integer",
  "resourceId": "String",
  "type": "String"
}
```

