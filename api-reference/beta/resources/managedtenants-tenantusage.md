---
title: "tenantUsage resource type"
description: "Represents the number of monthly active users per service in a managed tenant for the previous month. The time period for the data is a sliding window that takes a snapshot once a day."
author: "kylewirpel"
ms.localizationpriority: medium
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# tenantUsage resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the number of monthly active users per service in a managed tenant for the previous month. The time period for the data is a sliding window that takes a snapshot once a day.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List tenantUsages](../api/managedtenants-managedtenant-list-tenantusage.md)|[microsoft.graph.managedTenants.tenantUsage](../resources/managedtenants-tenantusage.md) collection|Get a list of the [tenantUsage](../resources/managedtenants-tenantusage.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the tenant. Required. Read-only.|
|reportDateTime|DateTimeOffset|The day the report was generated for the previous month. Required. Read-only.|
|serviceUsages|[microsoft.graph.managedTenants.serviceUsage](../resources/managedtenants-serviceusage.md) collection|The number of monthly active users for each service in the tenant. Example services: `Excel`, `Exchange`, `Intune`, `Outlook`, `Teams`, `Word`. Required. Read-only.|
|tenantId|String|The Azure Active Directory tenant identifier for the [managed tenant](../resources/managedtenants-tenant.md). Read-only.|
|totalActiveUsers|Int32|The total number of unique, active users. Required. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.tenantUsage",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.tenantUsage",
  "id": "String (identifier)",
  "serviceUsages": [
    {
      "@odata.type": "microsoft.graph.managedTenants.serviceUsage"
    }
  ],
  "tenantId": "String",
  "reportDateTime": "String (timestamp)",
  "totalActiveUsers": "Integer"
}
```
