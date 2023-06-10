---
title: "auditLogRoot resource type"
description: "Contains different types of audit logs. This resources returns a singleton auditLog resource. It doesn't contain any usable properties."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# auditLogRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains different types of audit logs. This resources returns a singleton auditLog resource. It doesn't contain any usable properties.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List directoryAudits](../api/directoryaudit-list.md) | [directoryAudit](directoryaudit.md) |List the directory audit items in the collection and their properties.|
|[Get directoryAudit](../api/directoryaudit-get.md) | [directoryAudit](directoryaudit.md) |Get a specific directory audit item and its properties.|
|[List customSecurityAttributeAudits](../api/auditlogroot-list-customsecurityattributeaudits.md)|[customSecurityAttributeAudit](../resources/customsecurityattributeaudit.md) collection|Get the customSecurityAttributeAudit resources from the customSecurityAttributeAudits navigation property.|
|[List provisioning](../api/provisioningobjectsummary-list.md)|[provisioningObjectSummary](../resources/provisioningobjectsummary.md) collection|Get the provisioningObjectSummary resources from the provisioning navigation property.|
|[List signIn](../api/signin-list.md) | [signIn](signin.md) |Read properties and relationships of signIn objects.|
|[Get signIn](../api/signin-get.md) | [signIn](signin.md) |Read properties and relationships of signIn object.|

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|customSecurityAttributeAudits|[customSecurityAttributeAudit](../resources/customsecurityattributeaudit.md) collection|**TODO: Add Description**|
|directoryAudits|[directoryAudit](../resources/directoryaudit.md) collection|Read-only. Nullable.|
|provisioning|[provisioningObjectSummary](../resources/provisioningobjectsummary.md) collection|**TODO: Add Description**|
|signIns|[signIn](../resources/signin.md) collection|Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.auditLogRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.auditLogRoot"
}
```

