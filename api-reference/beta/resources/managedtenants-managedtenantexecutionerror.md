---
title: "managedTenantExecutionError resource type"
description: "Represents an exception for a managed tenant operation."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# managedTenantExecutionError resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an exception for a managed tenant operation.

Inherits from [managedTenantOperationError](../resources/managedtenants-managedtenantoperationerror.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|error|String|The error message for the exception. Inherited from [managedTenantOperationError](../resources/managedtenants-managedtenantoperationerror.md). Required. Read-only.|
|errorDetails|String|Additional error information for the exception. Optional. Read-only.|
|nodeId|Int32|The node identifier where the exception occurred. Required. Read-only.|
|rawToken|String|The token for the exception. Optional. Read-only.|
|statementIndex|Int32|The statement index for the exception. Required. Read-only.|
|tenantId|String|The Microsoft Entra tenant identifier for the managed tenant. Inherited from [managedTenantOperationError](../resources/managedtenants-managedtenantoperationerror.md). Required. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedTenants.managedTenantExecutionError"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.managedTenantExecutionError",
  "tenantId": "String",
  "error": "String",
  "rawToken": "String",
  "statementIndex": "Integer",
  "nodeId": "Integer",
  "errorDetails": "String"
}
```
