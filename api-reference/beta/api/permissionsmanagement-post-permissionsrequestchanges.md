---
title: "Create permissionsRequestChange"
description: "Create a new permissionsRequestChange object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create permissionsRequestChange
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [permissionsRequestChange](../resources/permissionsrequestchange.md) object.

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
POST /permissionsManagement/permissionsRequestChanges
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [permissionsRequestChange](../resources/permissionsrequestchange.md) object.

You can specify the following properties when creating a **permissionsRequestChange**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|modificationDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|statusDetail|statusDetail|**TODO: Add Description**. The possible values are: `submitted`, `approved`, `completed`, `canceled`, `rejected`, `unknownFutureValue`. Required.|
|activeOccurrenceStatus|permissionsRequestOccurrenceStatus|**TODO: Add Description**. The possible values are: `grantingFailed`, `granted`, `granting`, `revoked`, `revoking`, `revokingFailed`, `unknownFutureValue`. Optional.|
|ticketId|String|**TODO: Add Description** Optional.|
|permissionsRequestId|String|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `201 Created` response code and a [permissionsRequestChange](../resources/permissionsrequestchange.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_permissionsrequestchange_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/permissionsManagement/permissionsRequestChanges
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.permissionsRequestChange",
  "modificationDateTime": "String (timestamp)",
  "statusDetail": "String",
  "activeOccurrenceStatus": "String",
  "ticketId": "String",
  "permissionsRequestId": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permissionsRequestChange"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.permissionsRequestChange",
  "id": "a03dd245-0607-518a-5ba5-fb339e9388f6",
  "modificationDateTime": "String (timestamp)",
  "statusDetail": "String",
  "activeOccurrenceStatus": "String",
  "ticketId": "String",
  "permissionsRequestId": "String"
}
```

