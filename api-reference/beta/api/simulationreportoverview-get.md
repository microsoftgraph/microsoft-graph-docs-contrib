---
title: "Get simulation report overview."
description: "Get report overview for an attack simulation campaign."
author: "Gopal-MSFT"
ms.localizationpriority: Menium
ms.prod: "security"
doc_type: apiPageType
---

# Get Simulation Overview Report
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get report overview for an attack simulation campaign.

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
GET /security/attackSimulation/simulations/{id}/report/overview
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [simulationReportOverview](../resources/simulationreportoverview.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_simulationreportoverview"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/attackSimulation/simulations/{id}/report/overview
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.simulationReportOverview"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.simulationReportOverview",
  "resolvedTargetsCount": "Integer",
  "simulationEventsContent": {
    "@odata.type": "microsoft.graph.simulationEventsContent"
  },
  "trainingEventsContent": {
    "@odata.type": "microsoft.graph.trainingEventsContent"
  },
  "recommendedActions": [
    {
      "@odata.type": "microsoft.graph.recommendedAction",
      "actionWebUrl": "String",
      "title": "String",
      "potentialScoreImpact": "Double"
    }
  ]
}
```

