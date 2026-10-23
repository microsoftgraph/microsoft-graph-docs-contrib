---
title: "identityVerificationEvent resource type"
description: "Represents an identity verification event, including verification facts, lifecycle state, and administrative override details."
author: "tilarso"
ms.date: 10/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# identityVerificationEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an identity verification event, including verification facts, lifecycle state, and administrative override details. Events are contained in a user's [identityVerificationStatus](../resources/identityverificationstatus.md) and are returned when you [get the status](../api/identityverificationstatus-get.md).

Use the update operation to apply or change an administrative override reason. Verification facts and lifecycle state can't be changed through PATCH.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/identityverificationstatus-post-verificationevents.md)|[identityVerificationEvent](../resources/identityverificationevent.md)|Create a new identityVerificationEvent object.|
|[Update](../api/identityverificationevent-update.md)|None|Apply or update an administrative override reason.|
|[Delete](../api/identityverificationevent-delete.md)|None|Delete an identityVerificationEvent object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique event identifier, supplied by the client on creation. Acts as an idempotency key. Immutable. Inherited from [entity](../resources/entity.md).|
|lifecycle|[verificationEventLifecycle](../resources/verificationeventlifecycle.md)|The source and current lifecycle state of the event.|
|overrideDetails|[verificationEventOverride](../resources/verificationeventoverride.md)|The administrative or programmatic override applied to the event. `null` when no override was applied.|
|verification|[verificationEventDetail](../resources/verificationeventdetail.md)|The verification state, provider, credential identifiers, and timestamps.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityVerificationEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityVerificationEvent",
  "id": "String (identifier)",
  "verification": {
    "@odata.type": "microsoft.graph.verificationEventDetail"
  },
  "lifecycle": {
    "@odata.type": "microsoft.graph.verificationEventLifecycle"
  },
  "overrideDetails": {
    "@odata.type": "microsoft.graph.verificationEventOverride"
  }
}
```
