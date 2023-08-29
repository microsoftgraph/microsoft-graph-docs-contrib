---
title: "Create scheduledPermissionsRequest"
description: "Create a new scheduledPermissionsRequest object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create scheduledPermissionsRequest
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md) object.

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
POST /permissionsManagement/scheduledPermissionsRequests
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md) object.

You can specify the following properties when creating a **scheduledPermissionsRequest**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|requestedPermissions|[permissionsDefinition](../resources/permissionsdefinition.md)|**TODO: Add Description** Required.|
|notes|String|**TODO: Add Description** Optional.|
|justification|String|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|**TODO: Add Description** Optional.|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|**TODO: Add Description** Optional.|
|statusDetail|statusDetail|**TODO: Add Description**. The possible values are: `submitted`, `approved`, `completed`, `canceled`, `rejected`, `unknownFutureValue`. Required.|



## Response

If successful, this method returns a `201 Created` response code and a [scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_scheduledpermissionsrequest_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/permissionsManagement/scheduledPermissionsRequests
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.scheduledPermissionsRequest",
  "requestedPermissions": {
    "@odata.type": "microsoft.graph.permissionsDefinition"
  },
  "notes": "String",
  "justification": "String",
  "scheduleInfo": {
    "@odata.type": "microsoft.graph.requestSchedule"
  },
  "ticketInfo": {
    "@odata.type": "microsoft.graph.ticketInfo"
  },
  "statusDetail": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.scheduledPermissionsRequest"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.scheduledPermissionsRequest",
  "id": "321b671b-9b57-b38d-b97b-5ec43abf3b5a",
  "requestedPermissions": {
    "@odata.type": "microsoft.graph.permissionsDefinition"
  },
  "notes": "String",
  "justification": "String",
  "createdDateTime": "String (timestamp)",
  "scheduleInfo": {
    "@odata.type": "microsoft.graph.requestSchedule"
  },
  "ticketInfo": {
    "@odata.type": "microsoft.graph.ticketInfo"
  },
  "statusDetail": "String"
}
```

