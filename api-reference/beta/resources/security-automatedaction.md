---
title: "automatedAction resource type"
description: "Represents an automated response action configured on a custom detection rule."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/25/2026
---

# automatedAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an automated response action configured in the **automatedActions** property of a [detectionAction](../resources/security-detectionaction.md) for a [detectionRule](../resources/security-detectionrule.md). This type is abstract and cannot be instantiated directly. Use one of the following derived types, differentiated by `@odata.type`:

- [accountObjectIdAction](../resources/security-accountobjectidaction.md)
- [accountSidAction](../resources/security-accountsidaction.md)
- [deviceAction](../resources/security-deviceaction.md)
- [emailAction](../resources/security-emailaction.md)
- [fileAction](../resources/security-fileaction.md)
- [isolateDeviceAction](../resources/security-isolatedeviceaction.md)
- [stopAndQuarantineFileAction](../resources/security-stopandquarantinefileaction.md)

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.automatedAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.automatedAction"
}
```