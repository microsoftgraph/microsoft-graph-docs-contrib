---
title: "Get training"
description: "Get an attack simulation training for a tenant."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# Get training

Namespace: microsoft.graph

Get an attack simulation [training](../resources/training.md) for a tenant. 

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                            |
|:---------------------------------------|:-----------------------------------------------------------------------|
| Delegated (work or school account)     | AttackSimulation.Read.All, AttackSimulation.ReadWrite.All              |
| Delegated (personal Microsoft account) | Not supported.                                                         |
| Application                            | AttackSimulation.Read.All, AttackSimulation.ReadWrite.All              |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/attackSimulation/trainings/{trainingId}
```

## Optional query parameters

This method doesn't currently support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [training](../resources/training.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_training"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/attackSimulation/trainings/21b2b7d1-11ae-a7a8-99c8-9029a4e70cc9
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.training"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#security/attackSimulation/trainings/$entity",
    "id": "db8175cd-bafe-433a-a823-a2d6dd6c5e6a",
    "displayName": "Mass Market Phishing - Amazon Gift Card",
    "description": "Mass Market Phishing - Amazon Gift Card",
    "durationInMinutes": 3,
    "source": "global",
    "type": "unknown",
    "tags": [
        "CredentialHarvesting",
        "DriveByUrl",
        "Compliance",
        "Basic",
        "Phishing"
    ],
    "availabilityStatus": "available",
    "supportedLocales": [
        "tr",
        "pl",
        "fa",
        "da",
        "nl"
    ],
    "hasEvaluation": false,
    "createdDateTime": "2020-09-18T06:54:46.1930597Z",
    "lastModifiedDateTime": "2023-03-28T12:01:33.3568194Z",
    "createdBy": {
        "email": "yibsu",
        "id": null,
        "displayName": null
    },
    "lastModifiedBy": {
        "email": "yibsu",
        "id": null,
        "displayName": null
    }
}
```
