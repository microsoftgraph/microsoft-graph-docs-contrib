---
title: "impactedAsset resource type"
description: "Describes an asset that was impacted based on the alert triggered by the custom detection rule"
author: "mmekler"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# impactedAsset resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes an asset that was impacted based on the alert triggered by a [Custom Detection Rule](../resources/security-detectionrule.md)..
It's an abstract type, and has multiple different impacted asset types that are derived from it:

* [User](../resources/security-impacteduserasset.md)
* [Device](../resources/security-impacteddeviceasset.md)
* [Mailbox](../resources/security-impactedmailboxasset.md)

## Properties
None.

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

