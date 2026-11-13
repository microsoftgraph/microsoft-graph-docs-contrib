---
title: "investigationIdentitySet resource type"
description: "Identifies the initiating principals recorded for an agentic session or agent run."
author: "berver"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# investigationIdentitySet resource type

Namespace: microsoft.graph

Identifies the principals recorded in the **initiatedBy** property of an [agentic session](../resources/investigationsession.md) or [agentRun](../resources/agentrun.md). Recorded identities describe provenance; they don't select execution credentials or grant access.

Inherits from [identitySet](../resources/identityset.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|agent|[identity](../resources/identity.md)|The initiating agent principal, when recorded by the service.|
|application|[identity](../resources/identity.md)|The recorded application identity. Inherited from [identitySet](../resources/identityset.md).|
|device|[identity](../resources/identity.md)|The recorded device identity. Inherited from [identitySet](../resources/identityset.md).|
|user|[identity](../resources/identity.md)|The recorded user identity. Inherited from [identitySet](../resources/identityset.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.investigationIdentitySet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.investigationIdentitySet",
  "user": {
    "@odata.type": "microsoft.graph.identity"
  },
  "application": {
    "@odata.type": "microsoft.graph.identity"
  },
  "device": {
    "@odata.type": "microsoft.graph.identity"
  },
  "agent": {
    "@odata.type": "microsoft.graph.identity"
  }
}
```
