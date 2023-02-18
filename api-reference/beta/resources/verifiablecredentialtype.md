---
title: "verifiableCredentialType resource type"
description: "Verifiable credentials type reference containing the type of the credential issued and list of accepted issuers."
author: "sponnada"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# verifiableCredentialType resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for the **credentialType** property of [verifiable credential settings](verifiablecredentialsettings.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|issuers|String collection| List of accepted issuers authority as identified by DID, for example, 'did:ion:EiAlrenrtD3Lsw0GlbzS1O2YFdy3Xtu8yo35W\<SNIP\>…' |
|credentialType|String| Issued credential type, for example, 'BusinessCardCredential'|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.verifiableCredentialType"
}
-->
``` json
{
    "@odata.type": "#microsoft.graph.verifiableCredentialType",
    "credentialTypes":[{
        "@odata.type": "#microsoft.graph.verifiableCredentialType",
        "issuers": ["did:ion:EiAlrenrtD3Lsw0GlbzS1O2YFdy3Xtu8yo35W<SNIP>…"],
        "credentialType": "VerifiedCredentialExpert"
    }]
}
```