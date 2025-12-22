---
title: "policyDeletableItem resource type"
description: "Represents policy types in Microsoft Entra that support soft-delete functionality."
author: "ashyasingh"
ms.date: 08/11/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# policyDeletableItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents policy types in Microsoft Entra that support soft-delete functionality. When deleted, you can restore these policies within a 30-day window, after which they are automatically and permanently deleted.

This resource is an abstract type from which the following resources inherit: 
- [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md)
- [crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md)
- [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md)
- [namedLocation](../resources/namedlocation.md)

Inherits from [entity](../resources/entity.md)

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|Shows the last date and time the policy was deleted.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.policyDeletableItem",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policyDeletableItem",
  "deletedDateTime": "String (timestamp)"
}
```

