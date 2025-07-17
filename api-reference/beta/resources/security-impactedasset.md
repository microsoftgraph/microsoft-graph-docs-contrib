---
title: "impactedAsset resource type"
description: "Represents an asset that was identified in an alert triggered by a custom detection rule."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 03/06/2024
---

# impactedAsset resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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

