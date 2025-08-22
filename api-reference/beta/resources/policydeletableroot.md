---
title: "policyDeletableRoot resource type"
description: "Represents a container for policy types in Microsoft Entra that support soft-delete functionality."
author: "*ashyasingh"
ms.date: 08/11/2025
ms.localizationpriority: medium
ms.subservice: "*entra-sign-in"
doc_type: resourcePageType
---

# policyDeletableRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for policy types in Microsoft Entra that support soft-delete functionality.


Inherits from [entity](../resources/entity.md).


## Methods
None.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|crossTenantPartners|[crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) collection|Represents the partner-specific configuration for cross-tenant access and tenant restrictions. Cross-tenant access settings include inbound and outbound settings of Microsoft Entra B2B collaboration and B2B direct connect.|
|crossTenantSyncPolicyPartners|[crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md) collection|Defines the cross-tenant policy for synchronization of users from a partner tenant. Use this user synchronization policy to streamline collaboration between users in a multi-tenant organization by automating the creation, update, and deletion of users from one tenant to another.|
|conditionalAccessPolicy|[conditionalAccessPolicy](../resources/conditionalaccesspolicy.md)|Represents a Microsoft Entra Conditional Access policy. Conditional access policies are custom rules that define an access scenario.|
|namedLocation|[namedLocation](../resources/namedlocation.md)|This is the base class that represents a Microsoft Entra ID named location. Named locations are custom rules that define network locations which can then be used in a Conditional Access (CA) policy.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.policyDeletableRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policyDeletableRoot",
  "id": "String (identifier)"
}
```

