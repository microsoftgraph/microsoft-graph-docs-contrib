---
title: "Get simulation"
description: "Get an attack simulation campaign for a tenant."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Get simulation
Namespace: microsoft.graph

Get an attack simulation campaign for a tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "simulation_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/simulation-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /security/attackSimulation/simulations/{simulationId}
```

## Optional query parameters

This method does not currently support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [simulation](../resources/simulation.md) object in the response body.

## Examples

### Example 1: Get an attack simulation campaign

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_simulation"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/security/attackSimulation/simulations/f1b13829-3829-f1b1-2938-b1f12938b1a
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-simulation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-simulation-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-simulation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-simulation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-simulation-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-simulation-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-simulation-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.simulation"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "id": "f1b13829-3829-f1b1-2938-b1f12938b1f1",
    "displayName": "Sample Simulation",
    "description": "Sample Simulation Description",
    "attackType": "social",
    "attackTechnique": "credentialHarvesting",
    "status": "scheduled",
    "createdDateTime": "2021-01-01T01:01:01.01Z",
    "createdBy": {
        "id": "99af58b9-ef1a-412b-a581-cb42fe8c8e21",
        "displayName": "Reed Flores",
        "email": "reed@contoso.com"
    },
    "lastModifiedDateTime": "2021-01-01T01:01:01.01Z",
    "lastModifiedBy": {
        "id": "99af58b9-ef1a-412b-a581-cb42fe8c8e21",
        "displayName": "Reed Flores",
        "email": "reed@contoso.com"
    },
    "launchDateTime": "2021-01-01T02:01:01.01Z",
    "completionDateTime": "2021-01-07T01:01:01.01Z",
    "isAutomated": false,
    "automationId": "f1b13829-3829-f1b1-2938-b1f12938b1ab",
    "payloadDeliveryPlatform": "email"
}
```

### Example 2: Get included account targets

The following example shows how to get included account targets (users) for an attack simulation campaign for a tenant.

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_simulation_includedAccountTarget"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/security/attackSimulation/simulations/f1b13829-3829-f1b1-2938-b1f12938b1a/includedAccountTarget
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-simulation-includedaccounttarget-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accountTargetContent"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.addressBookAccountTargetContent",
  "type": "addressBook",
  "accountTargetEmails": [
    "john@contoso.com"
  ]
}
```

### Example 3: Get excluded account targets

The following example shows how to get excluded account targets (users) for an attack simulation campaign for a tenant.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_simulation_excludedAccountTarget"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/security/attackSimulation/simulations/f1b13829-3829-f1b1-2938-b1f12938b1a/excludedAccountTarget
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-simulation-excludedaccounttarget-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accountTargetContent"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.addressBookAccountTargetContent",
  "type": "addressBook",
  "accountTargetEmails": [
    "alie@contoso.com"
  ]
}
```

### Example 4: Get training setting details

The following example shows how to get training setting details for a simulation.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_simulation_trainingSetting"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/security/attackSimulation/simulations/f1b13829-3829-f1b1-2938-b1f12938b1a/trainingSetting
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-simulation-trainingsetting-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.trainingSetting"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#security/attackSimulation/simulations('d93188b6-6473-4fdb-a73f-48d0dbdd0df6')/trainingSetting",
  "trainingCompletionDuration": "month",
  "completionDateTime": "0001-01-01T00:00:00Z",
  "settingType": "microsoftManaged"
}
```

### Example 5: Get end user notification setting 

The following example shows how to get end user notification setting details for a simulation.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_simulation_endUserNotificationSetting"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/security/attackSimulation/simulations/f1b13829-3829-f1b1-2938-b1f12938b1a/endUserNotificationSetting
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-simulation-endusernotificationsetting-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.endUserNotificationSetting"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#security/attackSimulation/simulations('d93188b6-6473-4fdb-a73f-48d0dbdd0df6')/endUserNotificationSetting",
  "settingType": "noNotification",
  "positiveReinforcement": null,
  "notificationPreference": "unknown"
}
```
### Example 6: Get users of a tenant and their online actions in a simulation 

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "usersimulationdetails_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/usersimulationdetails-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
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
```http
GET /security/attackSimulation/simulations/{simulationId}/report/simulationUsers?$count=true
GET /security/attackSimulation/simulations/{simulationId}/report/simulationUsers?$skipToken={skipToken}
GET /security/attackSimulation/simulations/{simulationId}/report/simulationUsers?$top=1
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [userSimulationDetails](../resources/usersimulationdetails.md) objects in the response body.

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_usersimulationdetails"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/security/attackSimulation/simulations/f1b13829-3829-f1b1-2938-b1f12938b1a/report/simulationUsers
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-usersimulationdetails-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.userSimulationDetails)"
}
-->
```http
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
