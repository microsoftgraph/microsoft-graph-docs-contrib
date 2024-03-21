---
title: "auditLogRoot resource type"
description: "Contains different types of audit logs. This resource returns a singleton auditLog resource. It doesn't contain any usable properties."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# auditLogRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains different types of audit logs. This resource returns a singleton auditLog resource. It doesn't contain any usable properties.

## Methods

None.

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|customSecurityAttributeAudits|[customSecurityAttributeAudit](../resources/customsecurityattributeaudit.md) collection|Represents a custom security attribute audit log.|
|directoryAudits|[directoryAudit](../resources/directoryaudit.md) collection|Read-only. Nullable.|
|provisioning|[provisioningObjectSummary](../resources/provisioningobjectsummary.md) collection|Represents an action performed by the Microsoft Entra provisioning service and its associated properties.|
|signIns|[signIn](../resources/signin.md) collection|Read-only. Nullable.|

## JSON representation

The following output is a JSON representation of the resource.

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

