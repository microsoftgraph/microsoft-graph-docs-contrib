---
title: Update simulations 
description: Updates an attack simulation campaign for a tenant.
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType

---

# Update simulations

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an attack simulation campaign for a tenant.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| Delegated (work or school account)     | AttackSimulation.ReadWrite.All              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | AttackSimulation.ReadWrite.All              |

## HTTP request
```http
PATCH /security/attackSimulation/simulations/{simulationId}
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Header         |Value                    |
|---------------|-------------------------|
|Authorization  |Bearer {token}. Required.|
|Content-Type   |application/json         |

## Request body
In the request body, supply a JSON representation of **simulation** object.

## Response
If successful, this method returns ```202 Accepted``` response code and a tracking header named ```location``` in the response.

## Example

**Request**

Here is an example of a request.

```http
PATCH https://graph.microsoft.com/beta//security/attackSimulation/simulations/2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc
Content-type: application/json

{
  "displayName": "Graph Simulation",
  "description": "Test simulation created using postman",
  "payloadDeliveryPlatform": "email",
  "payload@odata.bind":"https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a"
  "durationInDays": "7",
  "attackTechnique": "credentialHarvesting",
  "attackType": "social",
  "status": "scheduled",
  "completionDateTime": "2022-09-16T06:13:08.4297612Z",
  "launchDateTime": "2022-09-05T06:13:08.4297612Z",
  "includedAccountTarget": {
    "@odata.type": "#microsoft.graph.security.addressBookAccountTargetContent",
    "type" : "addressBook",
    "accountTargetEmails" : [
        "jeff.watson@microsoft.com",
        "pefferson.watson@microsoft.com"
    ]
  },
  "excludedAccountTarget": {
    "@odata.type": "#microsoft.graph.security.addressBookAccountTargetContent",
    "type" : "addressBook",
    "accountTargetEmails" : [
      "jeffer.watson@microsoft.com"
    ]
  }
}
```

**Response**

Here is an example of the response. 

> **Note**: The response object shown here might be shortened for readability.

```http
HTTP/1.1 202 Accepted Location https://graph.microsoft.com/beta/security/attackSimulation/operations/2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc 
```



