---
title: "Update scheduledPermissionsRequest"
description: "Update the properties of a scheduledPermissionsRequest object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update scheduledPermissionsRequest
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md) object.

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
PATCH /permissionsManagement/scheduledPermissionsRequests/{scheduledPermissionsRequestId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


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

If successful, this method returns a `200 OK` response code and an updated [scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_scheduledpermissionsrequest"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/permissionsManagement/scheduledPermissionsRequests/{scheduledPermissionsRequestId}
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
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
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

