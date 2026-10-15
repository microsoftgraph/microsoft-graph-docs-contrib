---
title: "identityVerificationStatus resource type"
description: "Represents a user's overall identity verification state and recent verification events."
author: "tilarso"
ms.date: 10/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# identityVerificationStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user's overall identity verification state and recent verification events. Each user has one **identityVerificationStatus** object. The service computes its properties from the user's verification events.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/identityverificationstatus-get.md)|[identityVerificationStatus](../resources/identityverificationstatus.md)|Read a user's identity verification status and recent verification events.|
|[Create verification event](../api/identityverificationstatus-post-verificationevents.md)|[identityVerificationEvent](../resources/identityverificationevent.md)|Record a verification event for a user.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|expiryDateTime|DateTimeOffset|The effective expiry of the user's overall verified state, computed as the latest **expiresDateTime** across active verification events. `null` when no active event has an expiry. Read-only.|
|id|String|The unique identifier of this singleton resource. Equals the owning user's object ID. Read-only. Inherited from [entity](../resources/entity.md).|
|lastVerifiedDateTime|DateTimeOffset|The date and time of the most recent successful identity verification. `null` when **state** is `unverified`. Read-only.|
|state|[verificationState](../resources/enums.md#verificationstate-values)|The overall verification state, computed from the most recent active verification event. The possible values are: `unverified`, `verified`, `revoked`, `suspended`, `issued`, `blocked`, `unknownFutureValue`. The service doesn't return an `expired` state; compare **expiryDateTime** with the current time to determine expiry. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|verificationEvents|[identityVerificationEvent](../resources/identityverificationevent.md) collection|The user's recent verification events, automatically included when the status is retrieved. Contains up to 10 events, ordered by recency. Older events are removed when the limit is reached.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityVerificationStatus",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityVerificationStatus",
  "id": "String (identifier)",
  "state": "String",
  "lastVerifiedDateTime": "String (timestamp)",
  "expiryDateTime": "String (timestamp)"
}
```
