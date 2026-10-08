---
title: "auditCoreRoot resource type"
description: "Represents the entry point for the audit log query API in Microsoft Graph."
author: "imsandhya7-spec"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 08/04/2026
toc.title: "Audit core root"
---
# auditCoreRoot resource type

Namespace: microsoft.graph.security

Represents the entry point for the audit log query API in Microsoft Graph. Use this resource to access audit log records through the **queries** navigation property.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List audit log queries](../api/security-auditcoreroot-list-auditlogqueries.md)|[auditLogQuery](../resources/security-auditlogquery.md) collection|Get a list of the [auditLogQuery](../resources/security-auditlogquery.md) objects and their properties.|
|[Create audit log query](../api/security-auditcoreroot-post-auditlogqueries.md)|[auditLogQuery](../resources/security-auditlogquery.md)|Create a new [auditLogQuery](../resources/security-auditlogquery.md) object.|

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|queries|[microsoft.graph.security.auditLogQuery](../resources/security-auditlogquery.md) collection|The collection of audit log queries.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.auditCoreRoot"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.auditCoreRoot"
}
```
