---
title: "auditLogQuery resource type"
description: "Represents an audit log query that is used to query and retrieve relevant audit log records."
author: "arishojaswi"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 09/10/2024
---

# auditLogQuery resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit log query that is used to query and retrieve relevant audit log records.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List auditLogQueries](../api/security-auditcoreroot-list-auditlogqueries.md)|[auditLogQuery](../resources/security-auditlogquery.md) collection|Get a list of the [auditLogQuery](../resources/security-auditlogquery.md) objects and their properties.|
|[Create auditLogQuery](../api/security-auditcoreroot-post-auditlogqueries.md)|[auditLogQuery](../resources/security-auditlogquery.md)|Create a new [auditLogQuery](../resources/security-auditlogquery.md) object.|
|[Get auditLogQuery](../api/security-auditlogquery-get.md)|[auditLogQuery](../resources/security-auditlogquery.md)|Read the properties and relationships of a [auditLogQuery](../resources/security-auditlogquery.md) object.|
|[List records](../api/security-auditlogquery-list-records.md)|[auditLogRecord](../resources/security-auditlogrecord.md) collection|Get the auditLogRecord resources from the records navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|administrativeUnitIdFilters|String collection|The administrative units tagged to an audit log record.|
|displayName|String|The display name of the saved audit log query.|
|filterEndDateTime|DateTimeOffset|The end date of the date range in the query.|
|filterStartDateTime|DateTimeOffset|The start date of the date range in the query.|
|id|String|Unique identifier for the audit log query. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|ipAddressFilters|String collection|The IP address of the device that was used when the activity was logged.|
|keywordFilter|String|Free text field to search non-indexed properties of the audit log.|
|objectIdFilters|String collection|For SharePoint and OneDrive for Business activity, the full path name of the file or folder accessed by the user. For Exchange admin audit logging, the name of the object that was modified by the cmdlet.|
|operationFilters|String collection|The name of the user or admin activity. For a description of the most common operations/activities, see [Search the audit log in the Office 365 Protection Center](https://go.microsoft.com/fwlink/p/?LinkId=708432).|
|recordTypeFilters|[microsoft.graph.security.auditLogRecordType](../resources/security-auditlogrecordtype.md) collection|The type of operation indicated by the record. For the list of member values, see [auditLogRecordType](../resources/security-auditlogrecordtype.md).|
|serviceFilter|String|Refers to the workload property in the audit record. This is the Microsoft service where the activity occurred. Optional.|
|status|microsoft.graph.security.auditLogQueryStatus|Describes the current status of the query. The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `cancelled`, `unknownFutureValue`.|
|userPrincipalNameFilters|String collection|The UPN (user principal name) of the user who performed the action (specified in the operation property) that resulted in the record being logged; for example, _my_name@my_domain_name_.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|records|[microsoft.graph.security.auditLogRecord](../resources/security-auditlogrecord.md) collection|An individual audit log record.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.auditLogQuery",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.auditLogQuery",
  "id": "String (identifier)",
  "displayName": "String",
  "filterStartDateTime": "String (timestamp)",
  "filterEndDateTime": "String (timestamp)",
  "recordTypeFilters": [
    "String"
  ],
  "keywordFilter": "String",
  "serviceFilter": "String",
  "operationFilters": [
    "String"
  ],
  "userPrincipalNameFilters": [
    "String"
  ],
  "ipAddressFilters": [
    "String"
  ],
  "objectIdFilters": [
    "String"
  ],
  "administrativeUnitIdFilters": [
    "String"
  ],
  "status": "String"
}
```
