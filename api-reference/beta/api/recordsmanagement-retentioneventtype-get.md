---
title: "Get retentionEventType"
description: "Read the properties and relationships of a retentionEventType object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: apiPageType
---

# Get retentionEventType
Namespace: microsoft.graph.recordsManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [retentionEventType](../resources/recordsmanagement-retentioneventtype.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**recordsManagement.Read.All, recordsManagement.ReadWrite.All**|
|Delegated (personal Microsoft account)|**Not Supported**|
|Application|**recordsManagement.Read.All, recordsManagement.ReadWrite.All**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /compliance/recordsManagement/eventTypes/{retentionEventTypeId}
GET /compliance/recordsManagement/labels/{retentionLabelId}/eventType
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [retentionEventType](../resources/recordsmanagement-retentioneventtype.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_retentioneventtype"
}
-->
``` http
GET https://graph.microsoft.com/beta/compliance/recordsManagement/eventTypes/{retentionEventTypeId}
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
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
}
```

