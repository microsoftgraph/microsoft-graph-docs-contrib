---
title: "applicationResourcePermission resource type"
description: "Represents a permission required by an application to access a resource."
author: "hafowler"
ms.date: 08/13/2026
ai-usage: ai-assisted
ms.custom: msecd-doc-authoring-1028
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# applicationResourcePermission resource type

Namespace: microsoft.graph

Represents a permission required by an application to access a resource. This is used when defining the permissions needed by multi-tenant applications provisioned in governed tenants. This resource is defined in the **permissions** property of [applicationsRequiredResourceAccess](../resources/tenantgovernanceservices-applicationsrequiredresourceaccess.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the permission.|
|name|String|The name of the permission.|
|type|[applicationPermissionType](../resources/enums-tenantgovernanceservices.md#applicationpermissiontype-values)|The type of permission. The possible values are: `role`, `scope`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.applicationResourcePermission"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.applicationResourcePermission",
  "id": "String",
  "name": "String",
  "type": "String"
}
```
