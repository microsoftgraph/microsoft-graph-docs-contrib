---
title: "Get incident"
description: "Retrieve the properties and relationships of an incident object."
ms.date: 09/09/2021
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get incident
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of an [incident](../resources/incident.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Incidents.Read.All, Incidents.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Incidents.Read.All, Incidents.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/incidents/{incidentId}
```


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [incident](../resources/incident.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_incident"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/incidents/{incidentId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.incident"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.incident",
    "id": "eb558b72-8b72-eb55-728b-55eb728b55eb",
    "incidentWebUrl": "String",
    "redirectIncidentId": "String",
    "displayName": "String",
    "createdDateTime": "String (timestamp)",
    "lastUpdateDateTime": "String (timestamp)",
    "assignedTo": "String",
    "classification": "String",
    "determination": "String",
    "status": "String",
    "severity": "String",
    "tags": [
      "String"
    ],
    "comments": [
      {
        "@odata.type": "microsoft.graph.m365AlertComment"
      }
    ]
  }
}
```

