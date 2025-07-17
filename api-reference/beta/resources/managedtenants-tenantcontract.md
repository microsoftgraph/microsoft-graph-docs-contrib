---
title: "tenantContract resource type"
description: "Represents relationship information between a tenant and the managing entity."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# tenantContract resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents relationship information between a tenant and the managing entity.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contractType|Int32|The type of relationship that exists between the managing entity and tenant. Optional. Read-only.|
|defaultDomainName|String|The default domain name for the tenant. Required. Read-only.|
|displayName|String|The display name for the tenant. Optional. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedTenants.tenantContract"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.tenantContract",
  "contractType": "Integer",
  "displayName": "String",
  "defaultDomainName": "String"
}
```
