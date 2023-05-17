--- 
title: "communicationsIdentitySet resource type"
description: "A combination of user and application identities that together identify a participant in a call or meeting."
author: "rahulva-msft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# communicationsIdentitySet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A combination of user and application identities that together identify a participant in a call or meeting.

Inherits from [identitySet](identityset.md).

## Properties

| Property                       | Type                        | Description                                                                                                                                       |
| :----------------------------- | :---------------------------| :-------------------------------------------------------------------------------------------------------------------------------------------------|
| application | [communicationsApplicationIdentity](communicationsApplicationIdentity.md) | Inherited from **identitySet**. The application associated with this action. |
| user | [communicationsUserIdentity](communicationsUserIdentity.md) | Inherited from **identitySet**. The user associated with this action. |
| phone | [communicationsPhoneIdentity](communicationsPhoneIdentity.md) | Inherited from **identitySet**. The phone user associated with this action. |
| guest | [communicationsGuestIdentity](communicationsGuestIdentity.md) | The guest user associated with this action. |
| encrypted | [communicationsEncryptedIdentity](communicationsEncryptedIdentity.md) | The encrypted user associated with this action. |
| azureCommunicationServicesUser | [azureCommunicationServicesUserIdentity](azureCommunicationServicesUserIdentity.md) | The Azure Communication Services user associated with this action. |
| applicationInstance | [communicationsApplicationInstanceIdentity](communicationsApplicationInstanceIdentity.md) | The application instance associated with this action. |
| onPremises | [communicationsUserIdentity](communicationsUserIdentity.md) | The Skype for Business On-Premises user associated with this action. |
| assertedIdentity | [communicationsUserIdentity](communicationsUserIdentity.md) or [communicationsPhoneIdentity](communicationsPhoneIdentity.md) | An **identity** the participant would like to present itself as to the other participants in the call. |
| endpointType | endpointType | Type of endpoint the participant is using. Possible values are: `default`, `voicemail`, `skypeForBusiness`, `skypeForBusinessVoipPhone` and `unknownFutureValue`. |

## JSON representation

The following is a JSON representation of the resource.

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
  "user": {"@odata.type": "microsoft.graph.communicationsUserIdentity"},
  "phone": {"@odata.type": "microsoft.graph.communicationsPhoneIdentity"},
  "guest": {"@odata.type": "microsoft.graph.communicationsGuestIdentity"},
  "encrypted": {"@odata.type": "microsoft.graph.communicationsEncryptedIdentity"},
  "azureCommunicationServicesUser": {"@odata.type": "microsoft.graph.azureCommunicationServicesUserIdentity"},
  "applicationInstance": {"@odata.type": "microsoft.graph.communicationsApplicationInstanceIdentity"},
  "onPremises": {"@odata.type": "microsoft.graph.communicationsUserIdentity"},
  "assertedIdentity": {"@odata.type": "microsoft.graph.identity"},
  "endpointType": "String"
}
```
