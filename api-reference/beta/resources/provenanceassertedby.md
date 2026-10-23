---
title: "provenanceAssertedBy resource type"
description: "Represents the actor that established an authentication method's credential provenance."
author: "tilarso"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 10/15/2026
---

# provenanceAssertedBy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the actor that established an authentication method's [credentialProvenance](../resources/credentialprovenance.md).

## Properties

| Property | Type | Description |
|:---|:---|:---|
| actorId | String | The identifier of the actor that established the provenance. |
| actorType | [provenanceActorType](../resources/enums.md#provenanceactortype-values) | The type of actor that established the provenance. The possible values are: `system`, `user`, `application`, `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.provenanceAssertedBy"
}-->

```json
{
  "@odata.type": "#microsoft.graph.provenanceAssertedBy",
  "actorId": "String",
  "actorType": "String"
}
```
