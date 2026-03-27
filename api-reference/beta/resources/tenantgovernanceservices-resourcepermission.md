---
title: "resourcePermission resource type"
description: "Represents a permission required by an application to access a resource."
author: "hafowler"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# resourcePermission resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a permission required by an application to access a resource. This is used when defining the permissions needed by multi-tenant applications provisioned in governed tenants. This resource is defined in the **permissions** property of [requiredResourceAccess](../resources/tenantgovernanceservices-requiredresourceaccess.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the permission.|
|name|String|The name of the permission.|
|type|[permissionType](../resources/enums-tenantgovernanceservices.md#permissiontype-values)|The type of permission. The possible values are: `role`, `scope`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.resourcePermission"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.resourcePermission",
  "id": "String",
  "name": "String",
  "type": "String"
}
```
