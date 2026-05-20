---
title: "appManagementPolicyActorExemptions resource type"
description: "Represents a collection of exemptions from the enforcement of application management policy restrictions."
author: "yogesh-randhawa"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 04/30/2026
---

# appManagementPolicyActorExemptions resource type

Namespace: microsoft.graph

Represents a collection of custom security attribute conditions that exempt specific actors (users or service principals) from application management policy restrictions. This object is configured in the **excludedActors** property of the following resources:
- [keyCredentialConfiguration](../resources/keyCredentialConfiguration.md)
- [passwordCredentialConfiguration](../resources/passwordCredentialConfiguration.md)
- [identifierUriRestriction](../resources/identifierurirestriction.md)

>[!NOTE]
>Actors with attributes matching any of the defined custom security attributes in the collection are exempt. The collection in this exemption is limited to 5 attributes.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|customSecurityAttributes|[customSecurityAttributeExemption](../resources/customsecurityattributeexemption.md) collection| The collection of [customSecurityAttributeExemption](../resources/customsecurityattributeexemption.md) to exempt from the policy enforcement. Limit of 5. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.appManagementPolicyActorExemptions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appManagementPolicyActorExemptions",
  "customSecurityAttributes": [
    {
      "@odata.type": "#microsoft.graph.customSecurityAttributeExemption"
    }
  ]
}
```