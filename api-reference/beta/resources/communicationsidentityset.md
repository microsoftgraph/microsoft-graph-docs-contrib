--- 
title: "communicationsIdentitySet resource type"
description: "Represents a combination of user and application identities that together identify a participant in a call or meeting."
author: "rahulva-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# communicationsIdentitySet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a combination of user and application identities that together identify a participant in a call or meeting.

Inherits from [identitySet](identityset.md).

## Properties

| Property                       | Type                        | Description                                                                                                                                       |
| :----------------------------- | :---------------------------| :-------------------------------------------------------------------------------------------------------------------------------------------------|
| application | [communicationsApplicationIdentity](communicationsapplicationidentity.md) | The application associated with this action. Inherited from **identitySet**. |
| applicationInstance | [communicationsApplicationInstanceIdentity](communicationsapplicationinstanceidentity.md) | The application instance associated with this action. |
| assertedIdentity | [communicationsUserIdentity](communicationsuseridentity.md) or [communicationsPhoneIdentity](communicationsphoneidentity.md) | An **identity** the participant would like to present itself as to the other participants in the call. |
| azureCommunicationServicesUser | [azureCommunicationServicesUserIdentity](azurecommunicationservicesuseridentity.md) | The Azure Communication Services user associated with this action. |
| encrypted | [communicationsEncryptedIdentity](communicationsencryptedidentity.md) | The encrypted user associated with this action. |
| endpointType | endpointType | Type of endpoint the participant uses. Possible values are: `default`, `voicemail`, `skypeForBusiness`, `skypeForBusinessVoipPhone` and `unknownFutureValue`. |
| guest | [communicationsGuestIdentity](communicationsguestidentity.md) | The guest user associated with this action. |
| onPremises | [communicationsUserIdentity](communicationsuseridentity.md) | The Skype for Business on-premises user associated with this action. |
| phone | [communicationsPhoneIdentity](communicationsphoneidentity.md) | The phone user associated with this action. |
| user | [communicationsUserIdentity](communicationsuseridentity.md) | The user associated with this action. Inherited from **identitySet**. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.communicationsIdentitySet",
  "optionalProperties": [
    "application",
    "user",
    "phone",
    "guest",
    "encrypted",
    "azureCommunicationServicesUser",
    "applicationInstance",
    "onPremises",
    "assertedIdentity",
    "endpointType"
  ],
} -->
```json
{
  "application": {"@odata.type": "microsoft.graph.communicationsApplicationIdentity"},
  "applicationInstance": {"@odata.type": "microsoft.graph.communicationsApplicationInstanceIdentity"},
  "assertedIdentity": {"@odata.type": "microsoft.graph.identity"},
  "azureCommunicationServicesUser": {"@odata.type": "microsoft.graph.azureCommunicationServicesUserIdentity"},
  "encrypted": {"@odata.type": "microsoft.graph.communicationsEncryptedIdentity"},
  "endpointType": "String",
  "guest": {"@odata.type": "microsoft.graph.communicationsGuestIdentity"},
  "onPremises": {"@odata.type": "microsoft.graph.communicationsUserIdentity"},
  "phone": {"@odata.type": "microsoft.graph.communicationsPhoneIdentity"},
  "user": {"@odata.type": "microsoft.graph.communicationsUserIdentity"}
}
```
