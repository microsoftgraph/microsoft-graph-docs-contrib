---
title: "verificationEventLifecycle resource type"
description: "Represents the source and lifecycle state of an identity verification event."
author: "tilarso"
ms.date: 10/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# verificationEventLifecycle resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the source and lifecycle state of an [identityVerificationEvent](../resources/identityverificationevent.md). The service manages lifecycle state; event PATCH requests can't update it.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|invalidatedDateTime|DateTimeOffset|The service-populated timestamp for an event in the `invalidated` lifecycle state. Otherwise, `null`. Read-only.|
|source|[verificationLifecycleSource](../resources/enums.md#verificationlifecyclesource-values)|The source that triggered the lifecycle state change. The possible values are: `entra`, `adminOverride`, `apiOverride`, `unknownFutureValue`. Immutable once set.|
|state|[verificationEventLifecycleState](../resources/enums.md#verificationeventlifecyclestate-values)|The service-managed lifecycle state. The possible values are: `active`, `revoked`, `suspended`, `invalidated`, `issued`, `blocked`, `unknownFutureValue`. These response values don't make administrative state-changing operations available. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.verificationEventLifecycle"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.verificationEventLifecycle",
  "source": "String",
  "state": "String",
  "invalidatedDateTime": "String (timestamp)"
}
```
