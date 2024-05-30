---
title: "Create simulation"
description: "Create an attack simulation campaign for a tenant."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Create simulation

Namespace: microsoft.graph

Create an attack simulation campaign for a tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "attacksimulationroot_post_simulation" } -->
[!INCLUDE [permissions-table](../includes/permissions/attacksimulationroot-post-simulation-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /security/attackSimulation/simulations
```

## Request headers

|Header         |Value                    |
|---------------|-------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type   |application/json         |

## Request body

In the request body, supply a JSON representation of a [simulation](../resources/simulation.md) object.

The following table lists the properties that are required when you create the simulation.

| Property | Type        | Description |
|:-------------|:------------|:------------|
|attackTechnique|[simulationAttackTechnique](../resources/simulation.md#simulationattacktechnique-values)|The social engineering technique used in the attack simulation and training campaign. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `credentialHarvesting`, `attachmentMalware`, `driveByUrl`, `linkInAttachment`, `linkToMalwareFile`, `unknownFutureValue`, `oAuthConsentGrant`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `oAuthConsentGrant`. For more information about the types of social engineering attack techniques, see [simulations](/microsoft-365/security/office-365-security/attack-simulation-training-get-started?view=o365-worldwide&preserve-view=true#simulations).|
|attackType|[simulationAttackType](../resources/simulation.md#simulationattacktype-values)|Attack type of the attack simulation and training campaign. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `social`, `cloud`, `endpoint`, `unknownFutureValue`.|
|createdBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who created the attack simulation and training campaign.|
|displayName|String|Display name of the attack simulation and training campaign. Supports `$filter` and `$orderby`.|
|durationInDays|Int32|Simulation duration in days. Optional.|
|endUserNotificationSetting|[endUserNotificationSetting](../resources/endusernotificationsetting.md)|The end user notification setting for the attack simulation and training campaign.|
|includedAccountTarget|[accountTargetContent](../resources/accounttargetcontent.md)|Users targeted in the simulation.|
|landingPage|[landingPage](../resources/landingpage.md)|The landing page associated with the attack simulation and training campaign.|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who most recently modified the attack simulation and training campaign.|
|launchDateTime|DateTimeOffset|Date and time of the launch/start of the attack simulation and training campaign. Supports `$filter` and `$orderby`. The timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|loginPage|[loginPage](../resources/loginpage.md)|The login page associated with the attack simulation and training campaign.|
|oAuthConsentAppDetail|[oAuthConsentAppDetail](../resources/oauthconsentappdetail.md)|Details required for the `oAuthConsentGrant` technique.|
|payload|[payload](../resources/payload.md)|The payload associated with the attack simulation and training campaign.|
|payloadDeliveryPlatform|payloadDeliveryPlatform|Method of delivery of the phishing payload used in the attack simulation and training campaign. Possible values are: `unknown`, `sms`, `email`, `teams`, `unknownFutureValue`.|
|status|[simulationStatus](../resources/simulation.md#simulationstatus-values)|Status of the attack simulation and training campaign. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `draft`, `running`, `scheduled`, `succeeded`, `failed`, `cancelled`, `excluded`, `unknownFutureValue`.|
|trainingSetting|[trainingSetting](../resources/trainingsetting.md)|The training setting for the attack simulation and training campaign.|

## Response

If successful, this method returns a `202 Accepted` response code and a tracking header named `location` in the response.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_simulations"
}
-->

```http
POST https://graph.microsoft.com/v1.0/security/attackSimulation/simulations
Content-type: application/json

{
  "displayName": "Graph Simulation",
  "payload@odata.bind": "https://graph.microsoft.com/v1.0/security/attacksimulation/payloads/12345678-9abc-def0-123456789a",
  "loginPage@odata.bind": "https://graph.microsoft.com/v1.0/security/attacksimulation/loginPages/1w345678-9abc-def0-123456789a",
  "landingPage@odata.bind": "https://graph.microsoft.com/v1.0/security/attacksimulation/landingPages/1c345678-9abc-def0-123456789a",
  "createdBy": {
    "email": "john@contoso.com"
  },
  "durationInDays": "3",
  "attackTechnique": "credentialHarvesting",
  "status": "scheduled",
  "includedAccountTarget": {
    "@odata.type": "#microsoft.graph.addressBookAccountTargetContent",
    "type": "addressBook",
    "accountTargetEmails": [
      "john@contoso.com"
    ]
  },
  "trainingSetting": {
    "settingType": "noTraining"
  },
  "endUserNotificationSetting": {
    "notificationPreference": "microsoft",
    "settingType": "noTraining",
    "positiveReinforcement": {
      "deliveryPreference": "deliverAfterCampaignEnd",
      "endUserNotification": "https://graph.microsoft.com/v1.0/security/attacksimulation/endUserNotifications/1ewer3678-9abc-def0-123456789a",
      "defaultLanguage": "en"
    },
    "simulationNotification": {
      "targettedUserType": "compromised",
      "endUserNotification@odata.bind": "https://graph.microsoft.com/v1.0/security/attacksimulation/endUserNotifications/12wer3678-9abc-def0-123456789a",
      "defaultLanguage": "en"
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-simulations-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-simulations-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-simulations-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-simulations-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-simulations-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-simulations-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-simulations-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-simulations-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

```http
HTTP/1.1 202 Accepted 
```
