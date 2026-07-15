---
title: "auditLog resource type"
description: "Represents an audit event that records a change or action in a case."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# auditLog resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit event that records a change or action in a case.

Inherited from [activity](../resources/security-casemanagement-activity.md).

## Methods
This resource is part of a polymorphic collection managed by the [activity](../resources/security-casemanagement-activity.md) base type. Use the [Get activity](../api/security-casemanagement-activity-get.md) endpoint to read audit log activities. Create, update, and delete operations aren't supported for audit logs.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.security.caseManagement.auditAction](#auditaction-values)|The action represented by the audit log activity.|
|createdBy|String|The user or service that created the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|createdDateTime|DateTimeOffset|The date and time when the resource was created. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|details|[microsoft.graph.security.caseManagement.activityResourceDetails](../resources/security-casemanagement-activityresourcedetails.md)|The target resource details for the audit activity.|
|id|String|The unique identifier for the resource. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|String|The user or service that last modified the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the resource was last modified. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|modifiedProperties|[microsoft.graph.security.caseManagement.modifiedProperty](../resources/security-casemanagement-modifiedproperty.md) collection|The collection of property changes recorded in the audit log.|

### auditAction values

|Member|Description|
|:---|:---|
|link|A resource was linked to the case.|
|unlink|A resource was unlinked from the case.|
|update|A resource was updated.|
|delete|A resource was deleted.|
|create|A resource was created.|
|upload|A file was uploaded.|
|download|A file was downloaded.|
|fileUploadMalwareDetected|Malware was detected during file upload.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.caseManagement.auditLog",
  "baseType": "microsoft.graph.security.caseManagement.activity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.auditLog",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "createdBy": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": "String",
  "action": "String",
  "details": {
    "@odata.type": "#microsoft.graph.security.caseManagement.activityResourceDetails"
  },
  "modifiedProperties": [
    {
      "@odata.type": "#microsoft.graph.security.caseManagement.modifiedProperty"
    }
  ]
}
```
