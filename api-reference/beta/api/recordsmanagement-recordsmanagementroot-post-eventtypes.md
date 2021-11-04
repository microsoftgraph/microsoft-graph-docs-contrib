---
title: "Create retentionEventType"
description: "Create a new retentionEventType object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: apiPageType
---

# Create retentionEventType
Namespace: microsoft.graph.recordsManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new retentionEventType object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**recordsManagement.ReadWrite.All**|
|Delegated (personal Microsoft account)|**Not supported**|
|Application|**recordsManagement.ReadWrite.All**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /compliance/recordsManagement/eventTypes
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [retentionEventType](../resources/recordsmanagement-retentioneventtype.md) object.

You can specify the following properties when creating a **retentionEventType**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**Name of the event type** Optional.|
|description|String|**Optional information about the event type** Optional.|
|createdBy|[microsoft.graph.identitySet](https://docs.microsoft.com/en-us/graph/api/resources/identityset?view=graph-rest-1.0&branch=main)|**The user who created the entity.** Optional.|
|createdDateTime|DateTimeOffset|**The date time when the entity was created.** Optional.|
|lastModifiedBy|[microsoft.graph.identitySet](https://docs.microsoft.com/en-us/graph/api/resources/identityset?view=graph-rest-1.0&branch=main)|**The latest user who modified the entity.** Optional.|
|lastModifiedDateTime|DateTimeOffset|**The latest date time when the entity was modified** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [retentionEventType](../resources/recordsmanagement-retentioneventtype.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_retentioneventtype_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/compliance/recordsManagement/eventTypes
Content-Type: application/json
Content-length: 208

{
  "@odata.type": "#microsoft.graph.recordsManagement.retentionEventType",
  "displayName": "String",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.recordsManagement.retentionEventType"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.recordsManagement.retentionEventType",
  "id": "dd689e79-9e79-dd68-799e-68dd799e68dd",
  "displayName": "String",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)"
}
```

