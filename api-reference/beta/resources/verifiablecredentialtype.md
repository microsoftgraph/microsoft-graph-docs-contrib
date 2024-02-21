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
|issuers|[verifiableCredentialIssuer](verifiableCredentialIssuer.md) collection| The different authorities that have issued this Verified ID to the appropriate users. |
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
    {
      "@odata.type": "microsoft.graph.verifiableCredentialIssuer"
    }
  ],
  "credentialType": "String"
}
```
