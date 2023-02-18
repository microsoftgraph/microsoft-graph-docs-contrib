---
title: "verifiableCredentialSettings resource type"
description: "Settings containing verifiable credentials types that are required for a presentation scenario. Administrators may configure an access package policy with these settings to require a requester to provide credentials while requesting for the package."
author: "sponnada"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# verifiableCredentialSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for the **verifiableCredentialSettings** property of an [access package assignment policy](accesspackageassignmentpolicy.md).

Subtypes include [verifiableCredentialType](verifiableCredentialType.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|credentialTypes|[verifiableCredentialType](verifiableCredentialType.md) collection| List of verifiable credential type references.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.verifiableCredentialSettings"
}
-->
``` json
{
    "@odata.type": "#microsoft.graph.verifiableCredentialSettings",
    "credentialTypes":[{
        "@odata.type": "#microsoft.graph.verifiableCredentialType",
        "issuers": ["did:ion:EiAlrenrtD3Lsw0GlbzS1O2YFdy3Xtu8yo35W<SNIP>…"],
        "credentialType": "VerifiedCredentialExpert"
    }]
}
```