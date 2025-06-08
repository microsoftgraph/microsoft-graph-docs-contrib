---
title: "Get incidentTask"
description: "Read properties and relationships of an incident task in Microsoft Defender XDR."
author: "BenAlfasi"
ms.date: 05/07/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get incidentTask

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties and relationships of a specific incident task in Microsoft Defender XDR.

## Permissions

One of the following permissions is required to call this API. To learn more, see [Permissions](/graph/permissions-overview).

<!-- {
  "blockType": "permissions",
  "name": "security-incidenttask-get"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-incidenttask-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/incidentTasks/{incidentTaskId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the [security-incidentTask](../resources/security-incidenttask.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_incidenttask"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/incidentTasks/213213
```

### Response
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.security.incidentTask"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

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
```
## Related content

- Learn about [Microsoft Graph error responses](/graph/errors).
- [incidentTask](../resources/security-incidenttask.md)

<!--
{
  "type": "#page.annotation",
  "description": "Get incidentTask",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "get_incidenttask: Unable to locate the corresponding response for this method. Missing or incorrect code block annotation."
  ]
}
-->
