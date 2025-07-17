---
title: "managedTenantOperationError resource type"
description: "An abstract type that represents an error for a managed tenant operation."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# managedTenantOperationError resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents an error for a managed tenant operation.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|error|String|The error message for the exception.|
|tenantId|String|The Microsoft Entra tenant identifier for the [managed tenant](../resources/managedtenants-tenant.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedTenants.managedTenantOperationError"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.managedTenantOperationError",
  "tenantId": "String",
  "error": "String"
}
```
