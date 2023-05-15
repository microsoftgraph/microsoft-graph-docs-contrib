---
title: "verifiableCredentialRetrieved resource type"
description: "Represents the status where a service requires a verifiable credential to be presented and the user has retrieved the presentation request."
author: "sponnada"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# verifiableCredentialRetrieved resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the status where a service requires a verifiable credential to be presented and the user has retrieved the presentation request.
Inherits from [verifiableCredentialRequirementStatus](../resources/verifiablecredentialrequirementstatus.md).
Used for the **verifiableCredentialRequirementStatus** property of [access package assignment request requirements](accessPackageAssignmentRequestRequirements.md).


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
  "@odata.type": "microsoft.graph.verifiableCredentialRetrieved"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.verifiableCredentialRetrieved",
  "expiryDateTime": "String (timestamp)"
}
```