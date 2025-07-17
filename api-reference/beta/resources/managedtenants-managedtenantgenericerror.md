---
title: "managedTenantGenericError resource type"
description: "Represents a generic error for a managed tenant."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# managedTenantGenericError resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a generic error for a managed tenant.

Inherits from [managedTenantOperationError](../resources/managedtenants-managedtenantoperationerror.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|error|String|The error message for the exception. Inherited from [managedTenantOperationError](../resources/managedtenants-managedtenantoperationerror.md). Required. Read-only.|
|tenantId|String|The Microsoft Entra tenant identifier for the managed tenant. Inherited from [managedTenantOperationError](../resources/managedtenants-managedtenantoperationerror.md). Optional. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedTenants.managedTenantGenericError"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.managedTenantGenericError",
  "tenantId": "String",
  "error": "String"
}
```
