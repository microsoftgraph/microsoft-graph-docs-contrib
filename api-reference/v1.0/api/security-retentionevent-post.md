---
title: "Create retentionEvent"
description: "Create a new retentionEvent object."
author: "sseth" 
ms.localizationpriority: medium
ms.prod: "security" 
doc_type: apiPageType
---

# Create retentionEvent
Namespace: microsoft.graph.security

Create a new [retentionEvent](../resources/security-retentionevent.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RecordsManagement.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|RecordsManagement.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/triggers/retentionEvents
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [retentionEvent](../resources/security-retentionevent.md) object.

Specify the following properties when creating a **retentionEvent**.

|Property|Type|Description|
|:---|:---|:---|
|description|String|Optional information about the event.|
|displayName|String|Name of the event.|
|eventQuery|[microsoft.graph.security.eventQuery](../resources/security-eventquery.md) collection| Represents the workload (SharePoint Online, OneDrive for Business, Exchange Online) and identification information associated with a retention event.|
|eventTriggerDateTime|DateTimeOffset|Optional time when the event should be triggered.|
|retentionEventType|String|Name of the event type associated with the event.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.retentionEvent](../resources/security-retentionevent.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_retentionevent_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/security/triggers/retentionEvents
Content-Type: application/json
Content-length: 616

{
  "@odata.type": "#microsoft.graph.security.retentionEvent",
  "displayName": "String",
  "description": "String",
  "eventQuery": [
    {
      "@odata.type": "microsoft.graph.security.eventQuery"
    }
  ],
  "eventTriggerDateTime": "String (timestamp)",
  "retentionEventType@odata.bind": "https://graph.microsoft.com/v1.0/security/triggerTypes/retentionEventType/9eecef97-fb3c-4c68-825b-4dd74530863a"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-retentionevent-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-retentionevent-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-retentionevent-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-retentionevent-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-retentionevent-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-retentionevent-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.retentionEvent"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

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
```

