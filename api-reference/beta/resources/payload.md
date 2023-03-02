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

Represents an attack simulation training payload in a tenant. A payload is the content (for example, message, links, and attachments) in a phishing email that is presented to users in an attack simulation training campaign.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List payload](../api/attacksimulationroot-list-payloads.md)|[payload](../resources/payload.md) collection|Get a list of attack simulation payload for a tenant.|
|[Get payload](../api/payload-get.md)|[payload](../resources/payload.md)|Get an attack simulation payload for a tenant.|
|[Get payloadDetail](../api/payloaddetail-get.md)|[payloadDetail](../resources/payloaddetail.md)|Get an attack simulation campaign payload detail for a tenant.|

## Properties

| Property | Type        | Description |
|:-------------|:------------|:------------|
|brand|[payloadBrand](#payloadbrand-values)|The branch of a payload. Possible values are: `unknown`, `other`, `americanExpress`, `capitalOne`, `dhl`, `docuSign`, `dropbox`, `facebook`, `firstAmerican`, `microsoft`, `netflix`, `scotiabank`, `stewartTitle`, `tesco`, `wellsFargo`, `syrinxCloud`, `adobe`, `teams`, `zoom`, `unknownFutureValue`. |
|complexity|[payloadComplexity](#payloadcomplexity-values)|The complexity of a payload.Possible values are: `unknown`, `low`, `medium`, `high`, `unknownFutureValue`|
|createdBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who created the attack simulation and training campaign payload.|
|createdDateTime|DateTimeOffset|Date and time when the attack simulation and training campaign payload.|
|description|String|Description of the attack simulation and training campaign payload.|
|detail|[payloadDetail](../resources/payloaddetail.md)|Additional details about the payload.|
|displayName|String|Display name of the attack simulation and training campaign payload. Supports `$filter` and `$orderby`.|
|id|String|Unique identifier for the attack simulation and training campaign payload. Inherited from [entity](../resources/entity.md).|
|industry|[payloadIndustry](#payloadindustry-values)|Industry of a payload. Possible values are: `unknown`, `other`, `banking`, `businessServices`, `consumerServices`, `education`, `energy`, `construction`, `consulting`, `financialServices`, `government`, `hospitality`, `insurance`, `legal`, `courierServices`, `IT`, `healthcare`, `manufacturing`, `retail`, `telecom`, `realEstate`, `unknownFutureValue`.|
|isAutomated|Boolean|Indicates whether the attack simulation and training campaign payload was created from an automation flow. Supports `$filter` and `$orderby`. |
|isControversial|Boolean|Indicates whether the payload is controversial. |
|isCurrentEvent|Boolean|Indicates whether the payload is from any recent event. |
|language|String|Payload language.|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who most recently modified the attack simulation and training campaign payload.|
|lastModifiedDateTime|DateTimeOffset|Date and time when the attack simulation and training campaign payload was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|payloadTags|String collection|Free text tags for a payload.|
|platform|payloadDeliveryPlatform|The payload delivery platform for a simulation. Possible values are: `unknown`, `sms`, `email`, `teams`, `unknownFutureValue`.|
|predictedCompromiseRate|Double|Predicted probability for a payload to phish a targeted user.|
|simulationAttackType|[simulationAttackType](../resources/simulation.md#simulationattacktype-values)|Attack type of the attack simulation and training campaign. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `social`, `cloud`, `endpoint`, `unknownFutureValue`.|
|source|[simulationContentSource](../resources/simulation.md#simulationcontentsource-values)|Simulation content source. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `tenant`, `global`, `unknownFutureValue`. Inherited from [simulation](../resources/simulation.md).|
|status|[simulationContentStatus](../resources/simulation.md#simulationcontentsource-values)|Simulation content status. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `draft`, `ready`, `archive`, `delete`, `unknownFutureValue`. Inherited from [simulation](../resources/simulation.md).|
|technique|[simulationAttackTechnique](../resources/simulation.md#simulationattacktechnique-values)|The social engineering technique used in the attack simulation and training campaign. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `credentialHarvesting`, `attachmentMalware`, `driveByUrl`, `linkInAttachment`, `linkToMalwareFile`, `unknownFutureValue`. For more information on the types of social engineering attack techniques, see [simulations](/microsoft-365/security/office-365-security/attack-simulation-training-get-started?view=o365-worldwide&preserve-view=true#simulations).|
|theme|[payloadTheme](#payloadtheme-values)|The theme of a payload. Possible values are: `unknown`, `other`, `accountActivation`, `accountVerification`, `billing`, `cleanUpMail`, `controversial`, `documentReceived`, `expense`, `incomingMessages`, `invoice`, `itemReceived`, `loginAlert`, `mailReceived`, `password`, `payment`, `payroll`, `personalizedOffer`, `quarantine`, `remoteWork`, `reviewMessage`, `securityUpdate`, `serviceSuspended`, `signatureRequired`, `upgradeMailboxStorage`, `verifyMailbox`, `voicemail`, `advertisement`, `employeeEngagement`, `unknownFutureValue`.|

### payloadTheme values

|Member|Description |
|:---|:---|
|unknown| The payload theme is not defined. |
|other| The payload is other.|
|accountActivation| Payload theme is of account activation.|
|accountVerification| Payload theme is of account verification.|
|billing| Payload theme is of billing type.|
|cleanUpMail| Payload mail cleanup details.|
|controversial| Payload controversial information.|
|documentReceived| Payload tells that the document has been received.|
|expense| Payload contains expense-related details.|
|fax| Payload contains fax-specific details.|
|financeReport| Payload contains a finance report.|
|incomingMessages| Payload contains details about incoming messages.|
|invoice| Payload contains invoice details.|
|itemReceived| Payload contains details about an item received.|
|loginAlert| Payload contains login alert information.|
|mailReceived| Payload contains information about a mail received.|
|password| Payload with password details.|
|payment| Payload with payment details.|
|payroll| Payload with payroll-specific details.|
|personalizedOffer| Payload with details about a personalized offer.|
|quarantine| Payload with quarantine-related details.|
|remoteWork| Payload related to as remote work.|
|reviewMessage| Payload with a review message request.|
|securityUpdate| Payload mentioning that a security update is required.|
|serviceSuspended| Payload mentioning that a service has been suspended.|
|signatureRequired| Payload telling that a signature is required.|
|upgradeMailboxStorage| Payload asking to upgrade the mailbox storage.|
|verifyMailbox| Payload asking for mailbox verification.|
|voicemail| Payload with voicemail details.|
|advertisement| Payload with advertisement details.|
|employeeEngagement| Payload with employee engagement details.|
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use. |

### payloadBrand values

|Member|Description |
|:---|:---|
|unknown| Payload brand as unknown.|
|other| Payload brand as other.|
|americanExpress| Payload brand as American Express.|
|capitalOne| Payload brand as Capital One.|
|dhl| Payload brand as DHL.|
|docuSign| Payload brand as DocuSign.|
|dropbox| Payload brand as Dropbox.|
|facebook| Payload brand as Facebook.|
|firstAmerican| Payload brand as First American.|
|microsoft| Payload brand as Microsoft.|
|netflix| Payload brand as Netflix.|
|scotiabank| Payload brand as Scotiabank.|
|sendGrid| Payload brand as SendGrid.|
|stewartTitle| Payload brand as Stewart Title.|
|tesco| Payload brand as Tesco.|
|wellsFargo| Payload brand as Wells Fargo.|
|syrinxCloud| Payload brand as Syrinx Cloud.|
|adobe| Payload brand as Adobe.|
|teams| Payload brand as Teams.|
|zoom| Payload brand as Zoom.|
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use. |

### payloadIndustry values

|Member|Description |
|:---|:---|
|unknown| Payload industry as unknown.|
|other| Payload industry as other.|
|banking| Payload industry as banking.|
|businessServices| Payload industry as business services.|
|consumerServices| Payload industry as consumer services.|
|education| Payload industry as education.|
|energy| Payload industry as energy.|
|construction| Payload industry as construction.|
|consulting| Payload industry as consulting.|
|financialServices| Payload industry as financial services.|
|government| Payload industry as government.|
|hospitality| Payload industry as hospitality.|
|insurance| Payload industry as insurance.|
|legal| Payload industry as legal.|
|courierServices| Payload industry as courier services.|
|IT| Payload industry as IT.|
|healthcare| Payload industry as healthcare.|
|manufacturing| Payload industry as manufacturing.|
|retail| Payload industry as retail.|
|telecom| Payload industry as telecom.|
|realEstate| Payload industry as real estate.|
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use. |

### payloadComplexity values

|Member|Description |
|:---|:---|
|unknown| The payload complexity is not defined. |
|low| The payload complexity is low. |
|medium| The payload complexity is medium. |
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
