---
title: "teamsEvalDataHubPermissionChangeAuditRecord resource type"
description: "Represents an audit record for Teams Eval Data Hub permission change events."
author: "imsandhya7-spec"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 08/04/2026
toc.title: "Teams Eval Data Hub permission change audit record"
---
# teamsEvalDataHubPermissionChangeAuditRecord resource type

Namespace: microsoft.graph.security

Represents an audit record for Teams Eval Data Hub permission change events. This resource captures information about these activities as part of the Microsoft 365 unified audit log.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).

## Methods

None. This resource is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|dynamicProperties|[microsoft.graph.security.auditRecordTypeDictionary](../resources/security-auditrecordtypedictionary.md)|Inherited from [auditData](../resources/security-auditdata.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.teamsEvalDataHubPermissionChangeAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.teamsEvalDataHubPermissionChangeAuditRecord",
  "dynamicProperties": {
    "@odata.type": "microsoft.graph.security.auditRecordTypeDictionary"
  }
}
```
