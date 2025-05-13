---
title: "List incidentTasks"
description: "Get incident tasks in Microsoft Defender XDR that Defender Experts for XDR identified for remediation."
author: "BenAlfasi"
ms.date: 05/07/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List incidentTasks

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get incident tasks in Microsoft Defender XDR. These tasks contain remediation actions identified by Defender Experts for XDR.

## Permissions

One of the following permissions is required to call this API. To learn more, see [Permissions](/graph/permissions-overview).

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
GET https://graph.microsoft.com/beta/security/incidentTasks
```

## Optional query parameters

This method supports these OData query parameters to customize the response. For general information, see [OData query parameters](/graph/query-parameters).

|Parameter|Type|Description|
|:---|:---|:---|
|$filter|string|Filter results by property values. Supported properties: incidentId, status, type, lastUpdateDateTime, createdDateTime, actionType.|
|$orderby|string|Sort results by property values. Supported property: lastUpdateDateTime.|
|$top|integer|Set the page size of results.|
|$select|string|Choose specific properties to include in results.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [security-incidentTask](../resources/security-incidenttask.md) objects in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "get_list_incidenttasks"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/incidentTasks
```

### Response

<!-- {
  "blockType": "response",
  "name": "get_list_incidenttasks",
  "truncated": false,
  "@odata.type": "collection(microsoft.graph.security.incidentTask)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "collection(#microsoft.graph.security.incidentTask)",
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.incidentTask",
      "id": "213213",
      "incident": {
        "@odata.type": "#microsoft.graph.security.incident",
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
```

<!--
{
  "type": "#page.annotation",
  "description": "List incidentTask",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "getlistincidenttasks: Unable to locate the corresponding response for this method. Missing or incorrect code block annotation."
  ]
}
-->