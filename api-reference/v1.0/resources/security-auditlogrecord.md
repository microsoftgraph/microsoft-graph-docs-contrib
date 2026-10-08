---
title: "auditLogRecord resource type"
description: "Represents an individual audit log record from the Microsoft 365 unified audit log."
author: "imsandhya7-spec"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 06/17/2026
toc.title: "Audit log record"
---
# auditLogRecord resource type

Namespace: microsoft.graph.security

Represents an individual audit log record from the Microsoft 365 unified audit log. Each record captures a specific activity or event across Microsoft 365 services.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-auditlogquery-list-records.md)|[auditLogRecord](../resources/security-auditlogrecord.md) collection|Get a list of the [auditLogRecord](../resources/security-auditlogrecord.md) objects and their properties.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|administrativeUnits|String collection|The collection of administrative units associated with the record.|
|auditData|[microsoft.graph.security.auditData](../resources/security-auditdata.md)|The audit data associated with the record.|
|auditLogRecordType|[microsoft.graph.security.auditLogRecordType](../resources/security-auditlogrecordtype.md)|The type of the audit log record.|
|clientIp|String|The IP address of the client that performed the activity.|
|createdDateTime|DateTimeOffset|The date and time when the activity was performed.|
|id|String|The unique identifier for the audit log record. Inherited from [entity](../resources/entity.md).|
|objectId|String|The identifier of the object that was affected by the activity.|
|operation|String|The name of the activity that was performed.|
|organizationId|String|The GUID of the organization's Microsoft 365 tenant.|
|service|String|The Microsoft 365 service where the activity occurred.|
|userId|String|The identifier of the user, system account, service, or application that performed the activity.|
|userPrincipalName|String|The user principal name of the user who performed the activity.|
|userType|microsoft.graph.security.auditLogUserType|The type of user who performed the activity. Possible values are: `regular`, `reserved`, `admin`, `dcAdmin`, `system`, `application`, `servicePrincipal`, `customPolicy`, `systemPolicy`, `partnerTechnician`, `guest`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.auditLogRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.auditLogRecord",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "auditLogRecordType": "String",
  "operation": "String",
  "organizationId": "String",
  "userType": "String",
  "userId": "String",
  "service": "String",
  "objectId": "String",
  "userPrincipalName": "String",
  "clientIp": "String",
  "administrativeUnits": ["String"],
  "auditData": {"@odata.type": "microsoft.graph.security.auditData"}
}
```
