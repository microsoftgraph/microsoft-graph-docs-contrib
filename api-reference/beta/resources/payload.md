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

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List payload](../api/attacksimulationroot-list-payloads.md)|[payload](../resources/payload.md) collection|Get a list of attack simulation payload for a tenant.|
|[Get payload](../api/attacksimulationroot-get-payload.md)|[payload](../resources/payload.md)|Get an attack simulation payload for a tenant.|

## Properties

|Property|Type|Description|

|:---|:---|:---|
|brand|[payloadBrand](#payloadbrand-values)|The branch of a payload.| Possible values are: `unknown`, `americanExpress`, etc|
|complexity|[payloadComplexity](#payloadcomplexity-values)|The complexity of a payload.|Possible values are: `unknown`, `low`, `medium`, `high` and `unknownFutureValue`|
|createdBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who created the attack simulation and training campaign payload.|
|createdDateTime|DateTimeOffset|Date and time when the attack simulation and training campaign payload.|
|description|String|Description of the attack simulation and training campaign payload.|
|detail|[payloadDetail](../resources/payloaddetail.md)|Additional details about the payload.|
|displayName|String|Display name of the attack simulation and training campaign payload. Supports `$filter` and `$orderby`.|
|id|String|Unique identifier for the attack simulation and training campaign payload. Inherited from [entity](../resources/entity.md).|
|industry|[payloadIndustry](#payloadindustry-values)|Industry of a payload.|Possible values are: `unknown`, `businessServices`, etc|
|isAutomated|Boolean|Indicates whether the attack simulation and training campaign payload was created from an automation flow. Supports `$filter` and `$orderby`. |
|isControversial|Boolean|Indicates whether the payload is controversial. |
|isCurrentEvent|Boolean|Indicates whether the payload is from any recent event. |
|language|String|Payload language.|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who most recently modified the attack simulation and training campaign payload.|
|lastModifiedDateTime|DateTimeOffset|Date and time when the attack simulation and training campaign payload was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|payloadTags|String collection|Free text tags for a payload.|
|platform|[payloadDeliveryPlatform](#payloaddeliveryplatform-values)|The payload delivery platform for a simulation. Possible values are: `unknown`, `sms`, `email`, `teams`, `unknownFutureValue`. 
|predictedCompromiseRate|Double|Predicted probability for a payload to phish a targeted user.|
|simulationAttackType|[simulationAttackType](../resources/simulation.md#simulationattacktype-values)|Attack type of the attack simulation and training campaign. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `social`, `cloud`, `endpoint`, `unknownFutureValue`.|
|source|[simulationContentSource](../resources/simulation.md#simulationcontentsource-values)|Simulation content source. Supports `$filter` and `$orderby`.Inherited from [simulation](../resources/simulation.md). Possible values are: `unknown`, `tenant`, `global`, `unknownFutureValue`.|
|status|[simulationContentStatus](../resources/simulation.md#simulationcontentsource-values)|Simulation content status. Supports `$filter` and `$orderby`.Inherited from [simulation](../resources/simulation.md) Possible values are: `unknown`, `draft`, `ready`, `archive`, `delete`, `unknownFutureValue`.|
|technique|[simulationAttackTechnique](../resources/simulation.md#simulationattacktechnique-values)|The social engineering technique used in the attack simulation and training campaign. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `credentialHarvesting`, `attachmentMalware`, `driveByUrl`, `linkInAttachment`, `linkToMalwareFile`, `unknownFutureValue`. For more information on the types of social engineering attack techniques, see [simulations](/microsoft-365/security/office-365-security/attack-simulation-training-get-started?view=o365-worldwide&preserve-view=true#simulations).|
|theme|[payloadTheme](#payloadtheme-values)|The theme of a payload.|Possible values are: `unknown`, `accountActivation`, etc|

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
|documentReceived| Payload tells the document has been received|
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


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.payload"
}
-->
``` json
{
    "@odata.type": "#microsoft.graph.payload",
    "brand": {"@odata.type": "microsoft.graph.payloadBrand"},
    "complexity": {"@odata.type": "microsoft.graph.payloadComplexity"},
    "createdBy": {"@odata.type": "microsoft.graph.emailIdentity"},
    "createdDateTime": "String (timestamp)",
    "description": "String",
    "detail": {"@odata.type": "microsoft.graph.payloadDetail"},
    "displayName": "String",
    "id": "String (identifier)",
    "industry": {"@odata.type": "microsoft.graph.payloadIndustry"},
    "isAutomated": "Boolean",
    "isControversial": "Boolean",
    "isCurrentEvent": "Boolean",
    "language": "String",
    "lastModifiedBy": {"@odata.type": "microsoft.graph.emailIdentity"},
    "lastModifiedDateTime": "String (timestamp)",
    "name": "String",
    "payloadTags": ["String"],
    "platform": {"@odata.type": "microsoft.graph.payloadDeliveryPlatform"},
    "predictedCompromiseRate": "Double",
    "simulationAttackType": {"@odata.type": "microsoft.graph.simulationAttackType"},
    "source": {"@odata.type": "microsoft.graph.simulationContentSource"},
    "status": {"@odata.type": "microsoft.graph.simulationContentStatus"},
    "technique": {"@odata.type": "microsoft.graph.simulationAttackType"},
    "theme": {"@odata.type": "microsoft.graph.payloadTheme"}
}
```


## See also
- [Simulate a phishing attack](/microsoft-365/security/office-365-security/attack-simulation-training?view=o365-worldwide&preserve-view=true)
- [Get started using attack simulation training](/microsoft-365/security/office-365-security/attack-simulation-training-get-started?view=o365-worldwide&preserve-view=true#simulations).
