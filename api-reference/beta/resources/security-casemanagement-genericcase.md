---
title: "genericCase resource type"
description: "Represents a generic case with assignment, priority, due date, and closing notes."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# genericCase resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a generic case with assignment, priority, due date, and closing notes. This resource derives from [case](../resources/security-casemanagement-case.md) and participates in the polymorphic `/security/caseManagement/cases` collection.

Inherited from [case](../resources/security-casemanagement-case.md).

## Methods
This resource is part of a polymorphic collection managed by the [case resource](../resources/security-casemanagement-case.md) base type. Operations are performed through the base type endpoints.

Use the base type [Update](../api/security-casemanagement-case-update.md) method to update **assignedTo**, **closingNotes**, **description**, **displayName**, **dueDateTime**, **priority**, and **status**.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedTo|String|The user assigned to the generic case.|
|closingNotes|String|Notes recorded when the generic case is closed.|
|createdBy|String|The user or service that created the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|createdDateTime|DateTimeOffset|The date and time when the resource was created. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|customFields|[microsoft.graph.security.caseManagement.customFieldValues](../resources/security-casemanagement-customfieldvalues.md)|Tenant-defined custom field values keyed by custom field identifier. Inherited from [case](../resources/security-casemanagement-case.md).|
|description|String|The description of the generic case.|
|displayName|String|The display name of the generic case. Inherited from [case](../resources/security-casemanagement-case.md).|
|dueDateTime|DateTimeOffset|The target completion date and time for the generic case.|
|id|String|The unique identifier for the resource. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|String|The user or service that last modified the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the resource was last modified. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|priority|String|The priority assigned to the generic case.|
|status|String|The lifecycle status of the generic case. Inherited from [case](../resources/security-casemanagement-case.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activities|[microsoft.graph.security.caseManagement.activity](../resources/security-casemanagement-activity.md) collection|The timeline of comments and audit events associated with the case. Inherited from [case](../resources/security-casemanagement-case.md).|
|attachments|[microsoft.graph.security.caseManagement.attachment](../resources/security-casemanagement-attachment.md) collection|Evidence files and metadata associated with the case. Inherited from [case](../resources/security-casemanagement-case.md).|
|relations|[microsoft.graph.security.caseManagement.relation](../resources/security-casemanagement-relation.md) collection|Links from the case to related security resources. Inherited from [case](../resources/security-casemanagement-case.md).|
|tasks|[microsoft.graph.security.caseManagement.task](../resources/security-casemanagement-task.md) collection|Tasks used to track work required to resolve the case. Inherited from [case](../resources/security-casemanagement-case.md).|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.caseManagement.genericCase",
  "baseType": "microsoft.graph.security.caseManagement.case",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.genericCase",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "createdBy": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": "String",
  "displayName": "String",
  "status": "String",
  "customFields": {
    "@odata.type": "#microsoft.graph.security.caseManagement.customFieldValues"
  },
  "description": "String",
  "closingNotes": "String",
  "assignedTo": "String",
  "priority": "String",
  "dueDateTime": "String (timestamp)"
}
```
