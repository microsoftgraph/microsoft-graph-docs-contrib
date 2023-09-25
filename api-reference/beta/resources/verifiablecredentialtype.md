---
title: "verifiableCredentialType resource type"
description: "Contains details of a verifiable credential type, including the type of the credential issued and list of accepted issuers."
author: "sponnada"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# verifiableCredentialType resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains details of a verifiable credential type, including the type of the credential issued and list of accepted issuers. Used for the **credentialType** property of [verifiableCredentialSettings](verifiablecredentialsettings.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|issuers|String collection| List of the accepted issuers authority as identified by the Microsoft Entra Verified ID service, for example, `did:ion:EiAlrenrtD3Lsw0GlbzS1O2YFdy3Xtu8yo35W\<SNIP\>...`. |
|credentialType|String| The type of credential issued, for example, `BusinessCardCredential`.|

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
  "issuers": [
    "String"
  ],
  "credentialType": "String"
}
```