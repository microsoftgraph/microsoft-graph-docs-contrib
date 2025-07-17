---
title: "myRole resource type"
description: "Represents the role assignments to a signed-in user for a managed tenant."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# myRole resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the role assignments to a signed-in user for a [managed tenant](../resources/managedtenants-tenant.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/managedtenants-managedtenant-list-myroles.md)|[microsoft.graph.managedTenants.myRole](../resources/managedtenants-myrole.md) collection|Get the roles that the signed-in user has through a delegated relationship across [managed tenants](../resources/managedtenants-tenant.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignments|[microsoft.graph.managedTenants.roleAssignment](../resources/managedtenants-roleassignment.md) collection|A collection of role assignments for the [managed tenant](../resources/managedtenants-tenant.md).|
|tenantId|String|The Microsoft Entra tenant identifier for the [managed tenant](../resources/managedtenants-tenant.md). Optional. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.myRole",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.myRole",
  "assignments": [
    {
      "@odata.type": "microsoft.graph.managedTenants.roleAssignment"
    }
  ],
  "tenantId": "String"
}
```
