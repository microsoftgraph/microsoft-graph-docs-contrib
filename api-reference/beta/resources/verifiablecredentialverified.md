---
title: "verifiableCredentialVerified resource type"
description: "Verifiable credential requirements status indicating that the credential verfication is completed and the issued credentials are not expired."
author: "sponnada"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# verifiableCredentialVerified resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for the **credentialType** property of [verifiable credential settings](verifiablecredentialsettings.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|expiryDateTime|DateTimeOffset| The specific date and time that the presentation request will expire and a new one will need to be generated. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.verifiableCredentialVerified"
}
-->
``` json
{
    "@odata.type": "#microsoft.graph.verifiableCredentialVerified",
    "credentialRetrieved":{
        "expiryDateTime": "",
    }
}
```