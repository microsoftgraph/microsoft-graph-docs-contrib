---
title: "List simulations"
description: "List attack simulations of a tenant."
author: "Gopal-MSFT"
ms.localizationpriority: Menium
ms.prod: "security"
doc_type: apiPageType
---

# List simulations
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List attack simulations of a tenant.

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
GET /security/attackSimulation/simulations
```

## Optional query parameters
This method supports the following OData query parameters to help customize the response: `$count`, `$filter`, `$orderby`, `$skiptoken`, and `$top`. 

The following properties support `$filter` and `$orderby`: **attackTechnique**, **attackType**, **completionDateTime**, **displayName**, **isAutomated**, **launchDateTime**, **mode**, and **status**.

Use `@odata.nextLink` and `$skiptoken` for pagination. For general information, see [OData query parameters](/graph/query-parameters).

The following are examples of their use:

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/attackSimulation/simulations?$count=true
GET /security/attackSimulation/simulations?$filter={property} eq '{property-value}'
GET /security/attackSimulation/simulations?$filter={property} eq '{property-value}'&$top=5
GET /security/attackSimulation/simulations?$orderby={property}
GET /security/attackSimulation/simulations?$top=1
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [simulation](../resources/simulation.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_simulation"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/attackSimulation/simulations
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.simulation)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.simulation",
      "id": "f1b13829-3829-f1b1-2938-b1f12938b1f1",
      "displayName": "String",
      "description": "String",
      "attackType": "String",
      "attackTechnique": "String",
      "status": "String",
      "createdDateTime": "String (timestamp)",
      "createdBy": {
        "@odata.type": "microsoft.graph.emailIdentity"
      },
      "lastModifiedDateTime": "String (timestamp)",
      "lastModifiedBy": {
        "@odata.type": "microsoft.graph.emailIdentity"
      },
      "launchDateTime": "String (timestamp)",
      "completionDateTime": "String (timestamp)",
      "includeAllAccountTargets": "Boolean",
      "enableRegionTimezoneDelivery": "Boolean",
      "mode": "String",
      "isAutomated": "Boolean",
      "cleanupArtifacts": "Boolean",
      "payloadSource": "String",
      "payloadDeliveryPlatform": "String",
      "trainingAssignmentPreference": "String",
      "trainingContentPreference": "String",
      "trainingDueDateTime": "String (timestamp)"
    }
  ]
}
```

