---
title: "List simulationUsers"
description: "List users of a tenant and their online actions in an attack simulation campaign."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# List simulationUsers
Namespace: microsoft.graph

List users of a tenant and their online actions in an attack simulation campaign.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | AttackSimulation.Read.All                   |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | AttackSimulation.Read.All                   |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/attackSimulation/simulations/{simulationId}/report/simulationUsers
```

## Optional query parameters

This method supports the `$count`, `$skipToken`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response. 

If the result set spans multiple pages, the response body contains an `@odata.nextLink` that you can use to page through the result set.

The following are examples of their use:

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/attackSimulation/simulations/{simulationId}/report/simulationUsers?$count=true
GET /security/attackSimulation/simulations/{simulationId}/report/simulationUsers?$skipToken={skipToken}
GET /security/attackSimulation/simulations/{simulationId}/report/simulationUsers?$top=1
```

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

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_usersimulationdetails"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/attackSimulation/simulations/f1b13829-3829-f1b1-2938-b1f12938b1a/report/simulationUsers
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-usersimulationdetails-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-usersimulationdetails-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

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
      "isCompromised": true,
      "compromisedDateTime": "2021-01-01T01:02:01.01Z",
      "simulationEvents": [
        {
          "eventName": "SuccessfullyDeliveredEmail",
          "eventDateTime": "2021-01-01T01:01:01.01Z",
          "ipAddress": "100.200.100.200",
          "osPlatformDeviceDetails": "Sample OS",
          "browser": "Sample Browser"
        },
        {
          "eventName": "EmailLinkClicked",
          "eventDateTime": "2021-01-01T01:02:01.01Z",
          "ipAddress": "100.200.100.200",
          "osPlatformDeviceDetails": "Sample OS",
          "browser": "Sample Browser"
        }
      ],
      "trainingEvents": [
        {
          "displayName": "Sample Training",
          "latestTrainingStatus": "assigned",
          "trainingAssignedProperties": {
            "contentDateTime": "2021-01-01T01:03:01.01Z",
            "ipAddress": "100.200.100.200",
            "osPlatformDeviceDetails": "Sample OS",
            "browser": "Sample Browser",
            "potentialScoreImpact": 5.0
          },
          "trainingUpdatedProperties": {
            "contentDateTime": "2021-01-01T01:04:01.01Z",
            "ipAddress": "100.200.100.201",
            "osPlatformDeviceDetails": "Sample OS-2",
            "browser": "Sample Browser",
            "potentialScoreImpact": 5.0
          },
          "trainingCompletedProperties": {
            "contentDateTime": "2021-01-01T01:05:01.01Z",
            "ipAddress": "100.200.100.202",
            "osPlatformDeviceDetails": "Sample OS",
            "browser": "Sample Browser-2",
            "potentialScoreImpact": 5.0
          }
        }
      ],
      "assignedTrainingsCount": 1,
      "completedTrainingsCount": 0,
      "inProgressTrainingsCount": 0,
      "reportedPhishDateTime": "2021-01-01T01:01:01.01Z",
      "simulationUser": {
        "userId": "99af58b9-ef1a-412b-a581-cb42fe8c8e21",
        "displayName": "Reed Flores",
        "email": "reed@contoso.com"
      }
    }
  ]
}
```

