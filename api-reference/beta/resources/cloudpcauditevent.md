---
title: "cloudPcAuditEvent resource type"
description: "Represents the audit event entity."
author: "ecmadao"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# cloudPcAuditEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the audit event entity.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/virtualendpoint-list-auditevents.md)|[cloudPcAuditEvent](../resources/cloudpcauditevent.md) collection|List all the [cloudPcAuditEvent](../resources/cloudpcauditevent.md) objects in a tenant.|
|[Get](../api/cloudpcauditevent-get.md)|[cloudPcAuditEvent](../resources/cloudpcauditevent.md)|Read the properties and relationships of a [cloudPcAuditEvent](../resources/cloudpcauditevent.md) object.|
|[Get audit activity types](../api/cloudpcauditevent-getauditactivitytypes.md)|String collection|Get audit activity types.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activity|String|Friendly name of the activity. Optional.|
|activityDateTime|DateTimeOffset|The date time in UTC when the activity was performed. Read-only.|
|activityOperationType|[cloudPcAuditActivityOperationType](#cloudpcauditactivityoperationtype-values)|The HTTP operation type of the activity. Possible values include `create`, `delete`, `patch` and `unknownFutureValue`. Read-only.|
|activityResult|[cloudPcAuditActivityResult](#cloudpcauditactivityresult-values)|The result of the activity. Possible values include `success`, `clientError`, `failure`, `timeout` and `unknownFutureValue`. Read-only.|
|activityType|String|The type of the activity that was performed. Read-only.|
|actor|[cloudPcAuditActor](../resources/cloudpcauditactor.md)|Microsoft Entra user and application associated with the audit event. Read-only.|
|category|[cloudPcAuditCategory](#cloudpcauditcategory-values)|Audit category. Possible values include `cloudPC` and `unknownFutureValue`. Read-only.|
|componentName|String|Component name. Read-only.|
|correlationId|String|The client request ID that is used to correlate activity within the system. Read-only.|
|displayName|String|Event display name. Read-only.|
|id|String|Key of the audit entity. Read-only.|
|resources|[cloudPcAuditResource](../resources/cloudpcauditresource.md) collection|List of cloudPcAuditResource objects. Read-only.|


### cloudPcAuditActivityOperationType values

|Member|Description|
|:---|:---|
|create|Indicates the operation used to create a target resource.|
|delete|Indicates the operation used to delete a target resource.|
|patch|Indicates the operation used to update a target resource.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### cloudPcAuditActivityResult values

|Member|Description|
|:---|:---|
|success|Operation succeeded.|
|clientError|Operation failed with client error.|
|failure|Operation failed.|
|timeout|Operation failed with timeout.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### cloudPcAuditCategory values

|Member|Description|
|:---|:---|
|cloudPC|Cloud PC category.|
|unknownFutureValue |Evolvable enumeration sentinel value. Don't use.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcAuditEvent",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcAuditEvent",
  "activity": "String",
  "activityDateTime": "String (timestamp)",
  "activityOperationType": "String",
  "activityResult": "String",
  "activityType": "String",
  "actor": {"@odata.type": "microsoft.graph.cloudPcAuditActor"},
  "category": "String",
  "componentName": "String",
  "correlationId": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "resources": [{"@odata.type": "microsoft.graph.cloudPcAuditResource"}]
}
```
