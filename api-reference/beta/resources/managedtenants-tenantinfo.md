---
title: "tenantInfo resource type"
description: "Represents information for a managed tenant."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# tenantInfo resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information for a managed tenant.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|tenantId|String|The Microsoft Entra tenant identifier for the [managed tenant](../resources/managedtenants-tenant.md). Optional.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedTenants.tenantInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.tenantInfo",
  "tenantId": "String"
}
```
