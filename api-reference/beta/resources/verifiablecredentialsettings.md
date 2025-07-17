---
title: "verifiableCredentialSettings resource type"
description: "Settings for verifiable credential types that a requestor must present to a service such as Entitlement Management."
author: "sponnada"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# verifiableCredentialSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings for verifiable credential types that a requestor must present to a service such as Entitlement Management.

Used for the **verifiableCredentialSettings** property of an [access package assignment policy](accesspackageassignmentpolicy.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|credentialTypes|[verifiableCredentialType](verifiablecredentialtype.md) collection| The types of verifiable credentials that a requestor must present when requesting an access package that has the policy.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.verifiableCredentialSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.verifiableCredentialSettings",
  "credentialTypes": [
    {
      "@odata.type": "microsoft.graph.verifiableCredentialType"
    }
  ]
}
```
