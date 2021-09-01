---
title: "List simulation users report"
description: "List users of a tenant in an attack simulation campaign with their online actions."
author: "gopkr"
localization_priority: Normal
ms.prod: "security"
doc_type: apiPageType
---

# List simulation users report
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List users of a tenant in an attack simulation campaign with their online actions.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | SecurityEvents.Read.All                     |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | SecurityEvents.Read.All                     |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/attackSimulation/simulations/{id}/report/simulationUsers
GET /security/attackSimulation/simulations/{id}/report/simulationUsers?$top=1
GET /security/attackSimulation/simulations/{id}/report/simulationUsers?$count=true
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

- `$count`
- `$skiptoken`
- `$top`

> **Note:** Use `@odata.nextLink` for pagination.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [userSimulationDetails](../resources/usersimulationdetails.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_usersimulationdetails"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/attackSimulation/simulations/{id}/report/simulationUsers
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.userSimulationDetails)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.userSimulationDetails",
      "isCompromised": "Boolean",
      "compromisedDateTime": "String (timestamp)",
      "simulationEvents": [
        {
          "@odata.type": "microsoft.graph.userSimulationEventInfo"
        }
      ],
      "trainingEvents": [
        {
          "@odata.type": "microsoft.graph.userTrainingEventInfo"
        }
      ],
      "assignedTrainingsCount": "Integer",
      "completedTrainingsCount": "Integer",
      "inProgressTrainingsCount": "Integer",
      "reportedPhishDateTime": "String (timestamp)",
      "simulationUser": {
        "@odata.type": "microsoft.graph.attackSimulationUser"
      }
    }
  ]
}
```

