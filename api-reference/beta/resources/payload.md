---
title: "payload resource type"
description: "Represents an attack simulation training payload in a tenant."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# payload resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an attack simulation training payload in a tenant.

Attack simulation and training is a service available as part of [Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365?view=o365-worldwide&preserve-view=true). This service lets tenant users experience a realistic benign phishing attack and learn from it. The service enables tenant administrators to simulate, assign trainings, and read derived insights into online behaviors of users in the phishing simulations. The service provides attack simulation reports that help tenants identify security knowledge gaps, so that they can further train their users to decrease their susceptibility to attacks.

The attack simulation and training API enables tenant administrators to list payloads.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List payload](../api/attacksimulationroot-list-payload.md)|[payload](../resources/payload.md) collection|Get a list of attack simulation payload for a tenant.|
|[Get payload](../api/attacksimulationroot-get-payload.md)|[payload](../resources/payload.md)|Get an attack simulation payload for a tenant.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the attack simulation and training campaign payload. Inherited from [entity](../resources/entity.md).|
|description|String|Description of the attack simulation and training campaign payload.|
|displayName|String|Display name of the attack simulation and training campaign payload. Supports `$filter` and `$orderby`.|
|simulationAttackType|[simulationAttackType](../resources/simulation.md#simulationattacktype-values)|Attack type of the attack simulation and training campaign. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `social`, `cloud`, `endpoint`, `unknownFutureValue`.|
|deliveryPlatform|[payloadDeliveryPlatform](#payloadDeliveryPlatform-values)|The payload delivery platform for a simulation. Possible values are: `unknown`, `sms`, `email`, `teams`, `unknownFutureValue`. For more information on the types of social engineering attack techniques, see [simulations](/microsoft-365/security/office-365-security/attack-simulation-training-get-started?view=o365-worldwide&preserve-view=true#simulations).|
|isAutomated|Boolean|Flag that represents if the attack simulation and training campaign payload was created from a automation flow. Supports `$filter` and `$orderby`. |
|status|[simulationContentStatus](../resources/simulation.md#simulationstatus-values)|Status of the attack simulation and training campaign. Supports `$filter` and `$orderby`.Inherited from [simulation](../resources/simulation.md) Possible values are: `unknown`, `draft`, `running`, `scheduled`, `succeeded`, `failed`, `cancelled`, `excluded`, `unknownFutureValue`.|
|source|[simulationContentSource](../resources/simulation.md#simulationstatus-values)|Status of the attack simulation and training campaign. Supports `$filter` and `$orderby`.Inherited from [simulation](../resources/simulation.md). Possible values are: `unknown`, `draft`, `running`, `scheduled`, `succeeded`, `failed`, `cancelled`, `excluded`, `unknownFutureValue`.|
|language|String|Unique identifier for the attack simulation payload.|
|predictedCompromiseRate|Double|Predicted probability for a payload to phish a targetted user.|
|attackTechnique|[simulationAttackTechnique](../resources/simulation.md#simulationattacktechnique-values)|The social engineering technique used in the attack simulation and training campaign. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `credentialHarvesting`, `attachmentMalware`, `driveByUrl`, `linkInAttachment`, `linkToMalwareFile`, `unknownFutureValue`. For more information on the types of social engineering attack techniques, see [simulations](/microsoft-365/security/office-365-security/attack-simulation-training-get-started?view=o365-worldwide&preserve-view=true#simulations).|
|complexity|[payloadComplexity](#payloadComplexity-values)|Complexity of a payload.|
|createdBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who created the attack simulation and training campaign payload.|
|createdDateTime|DateTimeOffset|Date and time of creation of the attack simulation and training campaign payload.|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who most recently modified the attack simulation and training campaign payload.|
|lastModifiedDateTime|DateTimeOffset|Date and time of the most recent modification of the attack simulation and training campaign payload.|
|theme|[payloadTheme](#payloadTheme-values)|Theme of a payload.|
|brand|[payloadBrand](#payloadBrand-values)|Brand of a payload.|
|industry|[payloadIndustry](#payloadIndustry-values)|industry of a payload.|
|isCurrentEvent|Boolean|Flag that represents if the payload is from any recent event. |
|isControversial|Boolean|Flag that represents if If payload is controversial |
|payloadTags|[String]collection|Free text tags for a payload.|
|detail|[payloadDetail](../resources/payloadDetail.md)|Additional details about the payload.|

### payloadTheme values

|Member|Description |
|:---|:---|
|unknown| The payload theme is not defined. |
|other| Payload payloadTheme as other|
|accountActivation| Payload as AccountActivation details|
|accountVerification| Payload  AccountVerification details|
|billing| Payload tax etc bill details|
|cleanUpMail| Payload mail cleanup details|
|controversial| Payload controversial information|
|documentReceived| Payload tells the document has been recieved|
|expense| Payload contains expense related details|
|fax| Payload contains fax specific details|
|financeReport| Payload contains FinanceReport|
|incomingMessages| Payload contains IncomingMessages details|
|invoice| Payload contains Invoice details|
|itemReceived| Payload contains ItemReceived details|
|loginAlert| Payload contains LoginAlert information|
|mailReceived| Payload contains MailReceived information|
|password| Payload with password details|
|payment| Payload with Payment details|
|payroll| Payload with Payroll specific details|
|personalizedOffer| Payload with PersonalizedOffer details|
|quarantine| Payload with Quarantine related details|
|remoteWork| Payload related to as RemoteWork|
|reviewMessage| Payload requesting to ReviewMessage|
|securityUpdate| Payload mentioning SecurityUpdate required|
|serviceSuspended| Payload mentioning ServiceSuspended|
|signatureRequired| Payload telling SignatureRequired|
|upgradeMailboxStorage| Payload asking to UpgradeMailboxStorage|
|verifyMailbox| Payload asking to VerifyMailbox|
|voicemail| Payload with Voicemail details|
|advertisement| Payload with advertisement details|
|employeeEngagement| Payload with EmployeeEngagement details|
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use. |

### payloadBrand values

|Member|Description |
|:---|:---|
|unknown| Payload brand as unknown|
|other| Payload brand as Other|
|americanExpress| Payload brand as AmericanExpress|
|capitalOne| Payload brand as CapitalOne|
|dhl| Payload brand as DHL|
|docuSign| Payload brand as DocuSign|
|dropbox| Payload brand as Dropbox|
|facebook| Payload brand as Facebook|
|firstAmerican| Payload brand as FirstAmerican|
|microsoft| Payload brand as Microsoft|
|netflix| Payload brand as Netflix|
|scotiabank| Payload brand as Scotiabank|
|sendGrid| Payload brand as SendGrid|
|stewartTitle| Payload brand as StewartTitle|
|tesco| Payload brand as Tesco|
|wellsFargo| Payload brand as WellsFargo|
|syrinxCloud| Payload brand as SyrinxCloud|
|adobe| Payload brand as Adobe|
|teams| Payload brand as Teams|
|zoom| Payload brand as Zoom|
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use. |

### payloadIndustry values

|Member|Description |
|:---|:---|
|unknown| Payload industry as unknown|
|other| Payload industry as other|
|banking| Payload industry as banking|
|businessServices| Payload industry as businessServices|
|consumerServices| Payload industry as consumerServices|
|education| Payload industry as education|
|energy| Payload industry as energy|
|construction| Payload industry as construction|
|consulting| Payload industry as consulting|
|financialServices| Payload industry as financialServices|
|government| Payload industry as government|
|hospitality| Payload industry as hospitality|
|insurance| Payload industry as insurance|
|legal| Payload industry as legal|
|courierServices| Payload industry as courierServices|
|IT| Payload industry as IT|
|healthcare| Payload industry as healthcare|
|manufacturing| Payload industry as manufacturing|
|retail| Payload industry as retail|
|telecom| Payload industry as telecom|
|realEstate| Payload industry as realEstate|
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use. |

### payloadComplexity values

|Member|Description |
|:---|:---|
|unknown| The payload complexity is not defined. |
|low| The payload complexity low. |
|medium| The payload complexity is medoum. |
|high| The payload complexity is high. |
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use. |

### payloadDeliveryPlatform values

|Member|Description |
|:---|:---|
|unknown| The payload delivery platform is not defined. |
|sms| The payload is delivered via sms. |
|email| The payload is delivered via email. |
|teams| The payload is delivered via teams. |
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.payload"
}
-->
``` json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/attackSimulation/payloads/2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc",
    "value":{
        "id": "2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc",
        "name": "AttackSimTest Payload",
        "description": "AttackSim Test Payload",
        "simulationAttackType": "social",
        "platform": "email",
        "isAutomated": null,
        "status": "draft",
        "source": "tenant",
        "language": "en",
        "predictedCompromiseRate": 20,
        "complexity": "medium",
        "attackTechnique": "credentialHarvesting",
        "createdBy": {
            "email": "attacksim@a8130edad9050849EQTPWBJZXODQ.onmicrosoft.com",
            "id": "121212",
            "displayName": "Suresh Pandit"
        },
        "createdDateTime": "2022-01-12T03:15:01.5906699Z",
        "lastModifiedBy": {
            "email": "attacksim@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com",
            "id": "1111",
            "displayName": "Test user 2"
        },
        "lastModifiedDateTime": "2021-10-07T12:23:18.8157586Z",
        "theme": "personalizedOffer",
        "brand": "microsoft",
        "industry": "IT",
        "isCurrentEvent": false,
        "isControversial": false,
        "detail" : null,
        "payloadTags": []
    }
}

```


## See also
- [Simulate a phishing attack](/microsoft-365/security/office-365-security/attack-simulation-training?view=o365-worldwide&preserve-view=true)
- [Get started using attack simulation training](/microsoft-365/security/office-365-security/attack-simulation-training-get-started?view=o365-worldwide&preserve-view=true#simulations).
