---
title: "impactedAsset resource type (deprecated)"
description: "Represents an asset that was identified in an alert triggered by a custom detection rule."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/25/2026
---

# impactedAsset resource type (deprecated)

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!IMPORTANT]
> The **impactedAsset** resource type and all derived types are deprecated and will be removed on 2026-10-01. Use [entityMapping](../resources/security-entitymapping.md) and its derived types via `alertTemplate.entityMappings` instead. See the [custom detection rule](../resources/security-detectionrule.md) topic for the new shape.

Represents an asset that was identified in an alert triggered by a [custom detection rule](../resources/security-detectionrule.md).

This type is abstract, and serves as the base type for the following asset types.

* [User](../resources/security-impacteduserasset.md)
* [Device](../resources/security-impacteddeviceasset.md)
* [Mailbox](../resources/security-impactedmailboxasset.md)

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.impactedAsset"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.impactedAsset"
}
```

