---
title: "Update retentionEventType"
description: "Update the properties of a retentionEventType object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Update retentionEventType
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [retentionEventType](../resources/security-retentioneventtype.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RecordsManagement.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/labels/retentionLabels/{retentionLabelId}/eventType
PATCH /security/triggerTypes/retentionEventTypes/{retentionEventTypeId}
PATCH /security/triggers/retentionEvents/{retentionEventId}/retentionEventType
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the event type. Optional.|
|description|String|Information about the event type. Optional.|


## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.security.retentionEventType](../resources/security-retentioneventtype.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "update_retentioneventtype"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/labels/retentionLabels/{retentionLabelId}/eventType
Content-Type: application/json
Content-length: 199

{
  "@odata.type": "#microsoft.graph.security.retentionEventType",
  "displayName": "String",
  "description": "String",
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
   "@odata.type": "microsoft.graph.security.retentionEventType"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.retentionEventType",
  "id": "dd689e79-9e79-dd68-799e-68dd799e68dd",
  "displayName": "String",
  "description": "String",
}
```
