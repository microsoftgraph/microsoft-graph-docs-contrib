---
title: "List retentionEvents"
description: "Get a list of the retentionEvent objects and their properties."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# List retentionEvents
Namespace: microsoft.graph.security

Get a list of the [retentionEvent](../resources/security-retentionevent.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RecordsManagement.Read.All, RecordsManagement.ReadWrite.All|
|Delegated (personal Microsoft account)|Not Supported.|
|Application|RecordsManagement.Read.All, RecordsManagement.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/triggers/retentionEvents
```

## Optional query parameters
This method supports the expand OData query parameters to help customize the response. For example, to get the event type, use `$expand=retentionEventType`. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.retentionEvent](../resources/security-retentionevent.md)  objects in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "list_retentionevent"
}
-->
``` http
GET https://graph.microsoft.com/v1/security/triggers/retentionEvents
```

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.retentionEvent)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.retentionEvent",
      "id": "fcdbfb58-d0c6-85dd-d011-4e0ff9a6805d",
      "displayName": "String",
      "description": "String",
      "eventQuery": [
        {
          "@odata.type": "microsoft.graph.security.eventQuery"
        }
      ],
      "eventTriggerDateTime": "String (timestamp)",
      "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "createdDateTime": "String (timestamp)",
      "lastModifiedBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "lastModifiedDateTime": "String (timestamp)",
      "eventPropagationResults": [
        {
          "@odata.type": "microsoft.graph.security.eventPropagationResult"
        }
      ],
      "eventStatus": {
        "@odata.type": "microsoft.graph.security.retentionEventStatus"
      },
      "lastStatusUpdateDateTime": "String (timestamp)"
    }
  ]
}
```
