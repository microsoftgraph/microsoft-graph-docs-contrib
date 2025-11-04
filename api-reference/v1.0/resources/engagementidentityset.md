---
title: "engagementIdentitySet resource type"
description: "Represents a unique identity in Viva Engage."
author: "aditijha"
ms.date: 05/21/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# engagementIdentitySet resource type

Namespace: microsoft.graph

Represents a unique identity in Viva Engage. This resource is an open type.

Inherits from [identitySet](../resources/identityset.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
| application | [identity](identity.md) | Optional. The application associated with this action. Inherited from [identitySet](../resources/identityset.md). |
| applicationInstance | [identity](identity.md) | Optional. The application instance associated with this action. Inherited from [identitySet](../resources/identityset.md). |
| audience | [identity](identity.md) | Optional. The audience associated with this action. |
| conversation| [identity](identity.md) | Optional. The team or channel associated with this action. Inherited from [identitySet](../resources/identityset.md). |
| conversationIdentityType| [identity](identity.md) | Optional. Indicates whether the **conversation** property identifies a team or channel. Inherited from [identitySet](../resources/identityset.md).|
| device      | [identity](identity.md) | Optional. The device associated with this action. Inherited from [identitySet](../resources/identityset.md). |
| encrypted       | [identity](identity.md) | Optional. The encrypted identity associated with this action. Inherited from [identitySet](../resources/identityset.md). |
| group        | [identity](identity.md) | Optional. The group associated with this action. |
| onPremises       | [identity](identity.md) | Optional. The on-premises identity associated with this action. Inherited from [identitySet](../resources/identityset.md). |
| guest       | [identity](identity.md) | Optional. The guest identity associated with this action. Inherited from [identitySet](../resources/identityset.md). |
| phone       | [identity](identity.md) | Optional. The phone number associated with this action. Inherited from [identitySet](../resources/identityset.md). |
| user        | [identity](identity.md) | Optional. The user associated with this action. Inherited from [identitySet](../resources/identityset.md). |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.engagementIdentitySet"
}
-->
``` json
{
  "application": {"@odata.type": "microsoft.graph.identity"},
  "applicationInstance": {"@odata.type": "microsoft.graph.identity"},
  "audience": {"@odata.type": "microsoft.graph.identity"},
  "conversation": {"@odata.type": "microsoft.graph.identity"},
  "conversationIdentityType": {"@odata.type": "microsoft.graph.identity"},
  "device": {"@odata.type": "microsoft.graph.identity"},
  "encrypted": {"@odata.type": "microsoft.graph.identity"},
  "group": {"@odata.type": "microsoft.graph.identity"},
  "guest": {"@odata.type": "microsoft.graph.identity"},
  "onPremises": {"@odata.type": "microsoft.graph.identity"},
  "phone": {"@odata.type": "microsoft.graph.identity"},
  "user": {"@odata.type": "microsoft.graph.identity"}
}
```
