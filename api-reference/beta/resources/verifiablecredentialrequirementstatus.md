---
title: "verifiableCredentialRequirementStatus resource type"
description: "Represents the status of processing the verifiable credential requirement for an access package request."
author: "sponnada"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# verifiableCredentialRequirementStatus resource type

Namespace: microsoft.graph


Represents the status of processing the verifiable credential requirement for an access package request. This is an abstract type that's inherited by [verifiableCredentialRequired](verifiablecredentialrequired.md), [verifiableCredentialRetrieved](verifiablecredentialretrieved.md), [verifiableCredentialVerified](verifiablecredentialverified.md). At any instance, the actual status of the processing is represented by one of the derived types.

## Properties
None.

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.verifiableCredentialRequirementStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.verifiableCredentialRequirementStatus"
}
```

