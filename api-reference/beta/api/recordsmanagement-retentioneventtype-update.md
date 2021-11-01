---
title: "Update retentionEventType"
description: "Update the properties of a retentionEventType object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: apiPageType
---

# Update retentionEventType
Namespace: microsoft.graph.recordsManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [retentionEventType](../resources/recordsmanagement-retentioneventtype.md) object.

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
PATCH /compliance/recordsManagement/eventTypes/{retentionEventTypeId}
PATCH /compliance/recordsManagement/labels/{retentionLabelId}/eventType
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
|displayName|String|**Name of the event type** Optional.|
|description|String|**Optional information about the event type** Optional.|
|createdBy|[microsoft.graph.identitySet](../resources/recordsmanagement-intune-identityset.md)|**The user who created the entity.** Optional.|
|createdDateTime|DateTimeOffset|**The date time when the entity was created.** Optional.|
|lastModifiedBy|[microsoft.graph.identitySet](../resources/recordsmanagement-intune-identityset.md)|**The latest user who modified the entity.** Optional.|
|lastModifiedDateTime|DateTimeOffset|**The latest date time when the entity was modified** Optional.|

## Response

If successful, this method returns a `200 OK` response code and an updated [retentionEventType](../resources/recordsmanagement-retentioneventtype.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_retentioneventtype"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/compliance/recordsManagement/eventTypes/{retentionEventTypeId}
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
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
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

