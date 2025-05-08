---
title: "List incidentTasks"
description: "Get a list of incident tasks in Microsoft 365 Defender. These tasks represent remediation actions identified by Defender Experts for XDR service."
author: "bealfasi"
ms.date: 05/07/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List incidentTasks

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of incident tasks in Microsoft 365 Defender. These tasks represent remediation actions identified by Defender Experts for XDR service.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-overview).

<!-- {
  "blockType": "permissions",
  "name": "security-list-incidenttasks"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-list-incidenttasks-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/incidentTasks
```

## Optional query parameters

This method supports the following OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

|Parameter|Type|Description|
|:---|:---|:---|
|$filter|string|Filter results by property values. Supported properties: incidentId, status, type, lastUpdateDateTime, createdDateTime, actionType.|
|$orderby|string|Order results by property values. Supported property: lastUpdateDateTime.|
|$top|integer|Set the maximum number of items to return.|
|$select|string|Choose which properties to include in the response.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [incidentTask](../resources/incidenttask.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_incidenttask"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/incidentTasks
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-incidenttask.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-incidenttask.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-incidenttask.md)]

---

### Response

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.incidentTask"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/incidentTasks",
    "value": [
        {
            "id": "213213",
            "incident": {
                "id": "123"
            },
            "status": "open",
            "source": "defenderExpertsXDR",
            "displayName": "Isolate device testmachine20",
            "description": "This action will isolate device testmachine20 from the network.",
            "createdDateTime": "2023-06-26T19:07:39.7433333Z",
            "createdByDisplayName": "Defender Experts",
            "lastModifiedDateTime": "2023-06-27T10:49:33.98Z",
            "lastModifiedByDisplayName": "bealfasi",
            "actionType": "isolateDevice",
            "actionStatus": "notStarted",
            "responseAction": {
                "@odata.type": "#microsoft.graph.security.isolateDeviceResponseAction",
                "isolationType": "full",
                "identifierValue": "02851525-dc00-438b-83f5-3b2947bf4a48"
            }
        }
    ]
}
