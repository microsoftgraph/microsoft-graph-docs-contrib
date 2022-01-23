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
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of an [incident](../resources/security-incident.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|SecurityIncident.Read.All, SecurityIncident.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|SecurityIncident.Read.All, SecurityIncident.ReadWrite.All|

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

If successful, this method returns a `200 OK` response code and an [incident](../resources/security-incident.md) object in the response body.

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
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.incident",
    "id": "2972395",
    "incidentWebUrl": "https://security.microsoft.com/incidents/2972395?tid=12f988bf-16f1-11af-11ab-1d7cd011db47",
    "redirectIncidentId": null,
    "displayName": "Multi-stage incident involving Initial access & Command and control on multiple endpoints reported by multiple sources",
    "aadTenantId": "b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c",
    "createdDateTime": "2021-08-13T08:43:35.5533333Z",
    "lastUpdateDateTime": "2021-09-30T09:35:45.1133333Z",
    "assignedTo": "KaiC@contoso.onmicrosoft.com",
    "classification": "TruePositive",
    "determination": "MultiStagedAttack",
    "status": "Active",
    "severity": "Medium",
    "tags": [
      "Demo"
    ],
    "comments": [
      {
		"comment": "Demo incident",
		"createdBy": "DavidS@contoso.onmicrosoft.com",
		"createdTime": "2021-09-30T12:07:37.2756993Z"
      }
    ]
}
```
