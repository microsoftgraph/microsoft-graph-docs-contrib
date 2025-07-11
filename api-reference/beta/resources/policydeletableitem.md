---
title: "policyDeletableItem resource type"
description: "Resource type showing the deletable policy types."
author: "ashyasingh"
ms.date: 06/18/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# policyDeletableItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Resource type showing the deletable policy types. Policies under this resource type support soft delete functionality meaning they can be deleted and restored within 30 days. After 30 days, the policy is permanently deleted.

This is an abstract type.

Inherits from [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) and[crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
None

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
