---
title: "verifiableCredentialRequired resource type"
description: "Verifiable credential requirements status indicating that credentials verification is required and returns the information required to initiate the credential verification process."
author: "sponnada"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# verifiableCredentialRequired resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Verifiable credential requirements status indicating that credentials verification is required and returns the information required to initiate the credential verification process.
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
        "expiryDateTime": "2023-02-10T00:35:53.214Z",
        "url": "openid://vc/?request_uri=https://beta.did.msidentity.com/v1.0/87654321-0000-0000-0000-000000000000/verifiablecredentials/request/e4ef27ca-eb8c-4b63-823b-3b95140eac11"
    }
}
```