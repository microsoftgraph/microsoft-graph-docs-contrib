---
title: "verifiableCredentialRequired resource type"
description: "Verifiable credential requirements status indicating that credentials verification is required and returns the information returned by the presentation request. The information can be provided to the user to initiate the credential verification process."
author: "sponnada"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# verifiableCredentialRequired resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for the **credentialType** property of [verifiable credential settings](verifiablecredentialsettings.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|expiryDateTime|DateTimeOffset| The specific date and time that the presentation request will expire and a new one will need to be generated. |
|url|String| The deep link URL that directs the user to Authenticator to provide the desired credentials.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.verifiableCredentialRequired"
}
-->
``` json
{
    "@odata.type": "#microsoft.graph.verifiableCredentialRequired",
    "credentialRequied":{
        "expiryDateTime": "",
        "url": "VerifiedCredentialExpert"
    }
}
```