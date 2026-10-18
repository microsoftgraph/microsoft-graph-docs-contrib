---
title: "verificationEventOverride resource type"
description: "Represents an administrative or programmatic override applied to an identity verification event."
author: "tilarso"
ms.date: 10/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# verificationEventOverride resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an administrative or programmatic override applied to an [identityVerificationEvent](../resources/identityverificationevent.md). Supply only **reason** when applying an override; the service records the actor and timestamp from the caller's identity.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actorId|String|The object ID of the actor who applied the override. Set by the service from the caller's identity. Read-only.|
|actorType|[verificationActorType](../resources/enums.md#verificationactortype-values)|The type of actor who applied the override. The possible values are: `user`, `application`, `unknownFutureValue`. Set by the service from the caller's identity. Read-only.|
|overriddenDateTime|DateTimeOffset|The date and time when the override was applied. Set by the service. Read-only.|
|reason|String|The explanation for the override, such as `In-person identity proofing confirmed by help desk`. Maximum 500 characters.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.verificationEventOverride"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.verificationEventOverride",
  "reason": "String",
  "actorType": "String",
  "actorId": "String",
  "overriddenDateTime": "String (timestamp)"
}
```
