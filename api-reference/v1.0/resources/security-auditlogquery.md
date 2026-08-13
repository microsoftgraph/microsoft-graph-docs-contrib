---
title: "auditLogQuery resource type"
description: "Represents a query against the Microsoft 365 unified audit log."
author: "imsandhya7-spec"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 06/17/2026
toc.title: "Audit log query"
---
# auditLogQuery resource type

Namespace: microsoft.graph.security

Represents a query against the Microsoft 365 unified audit log. Use this resource to define search parameters and retrieve audit log records.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get audit log query](../api/security-auditlogquery-get.md)|[auditLogQuery](../resources/security-auditlogquery.md)|Read the properties and relationships of an [auditLogQuery](../resources/security-auditlogquery.md) object.|
|[List records](../api/security-auditlogquery-list-records.md)|[auditLogRecord](../resources/security-auditlogrecord.md) collection|Get the auditLogRecord resources from the records navigation property.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|administrativeUnitIdFilters|String collection|The collection of administrative unit IDs to filter on.|
|displayName|String|The display name of the audit log query.|
|filterEndDateTime|DateTimeOffset|The end date and time of the audit log query filter.|
|filterStartDateTime|DateTimeOffset|The start date and time of the audit log query filter.|
|id|String|The unique identifier for the audit log query. Inherited from [entity](../resources/entity.md).|
|ipAddressFilters|String collection|The collection of IP addresses to filter on.|
|keywordFilter|String|The keyword to filter on.|
|objectIdFilters|String collection|The collection of object IDs to filter on.|
|operationFilters|String collection|The collection of operations to filter on.|
|recordTypeFilters|[microsoft.graph.security.auditLogRecordType](../resources/security-auditlogrecordtype.md) collection|The collection of record types to filter on.|
|serviceFilters|String collection|The collection of services to filter on.|
|status|microsoft.graph.security.auditLogQueryStatus|The status of the audit log query. Possible values are: `notStarted`, `running`, `succeeded`, `failed`, `cancelled`, `unknownFutureValue`.|
|userPrincipalNameFilters|String collection|The collection of user principal names to filter on.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|records|[microsoft.graph.security.auditLogRecord](../resources/security-auditlogrecord.md) collection|The collection of audit log records retrieved by the query.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.auditLogQuery"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.auditLogQuery",
  "id": "String (identifier)",
  "displayName": "String",
  "filterStartDateTime": "String (timestamp)",
  "filterEndDateTime": "String (timestamp)",
  "recordTypeFilters": ["String"],
  "keywordFilter": "String",
  "serviceFilters": ["String"],
  "operationFilters": ["String"],
  "userPrincipalNameFilters": ["String"],
  "ipAddressFilters": ["String"],
  "objectIdFilters": ["String"],
  "administrativeUnitIdFilters": ["String"],
  "status": "String"
}
```
