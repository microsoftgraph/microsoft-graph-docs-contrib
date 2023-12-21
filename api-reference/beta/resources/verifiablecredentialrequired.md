---
title: "verifiableCredentialRequired resource type"
description: "Represents the status where a service requires a verifiable credential to be presented and it returns the information required to initiate the credential verification process."
author: "sponnada"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# verifiableCredentialRequired resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Verifiable credential requirements status indicating that credentials verification is required and returns the information required to initiate the credential verification process. Used for the **verifiableCredentialRequirementStatus** property of [access package assignment request requirements](accessPackageAssignmentRequestRequirements.md).

Inherits from [verifiableCredentialRequirementStatus](verifiableCredentialRequirementStatus.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|expiryDateTime|DateTimeOffset| When the presentation request will expire and a new one will need to be generated. |
|url|String| A URL that launches the digital wallet and starts the presentation process. You can present this URL to the user if they can't scan the QR code. |

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
  "expiryDateTime": "String (timestamp)",
  "url": "String"
}
```
