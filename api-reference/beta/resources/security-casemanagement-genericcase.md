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

For cast segments in URLs, use the full type name, for example `microsoft.graph.security.caseManagement.genericCase`.

## Methods
This resource is part of a polymorphic collection managed by the [case resource](../resources/security-casemanagement-case.md) base type. Operations are performed through the base type endpoints.

Use the base type [Update](../api/security-casemanagement-case-update.md) method to update **assignedTo**, **closingNotes**, **description**, **displayName**, **dueDateTime**, **priority**, and **status**.

To use a supported query option with a property declared only on **genericCase**, cast the base cases collection to `microsoft.graph.security.caseManagement.genericCase`.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedTo|String|The user assigned to the generic case. Supports `$filter` and `$orderby`.|
|closingNotes|String|Notes recorded when the generic case is closed. Supports `$filter`.|
|createdBy|String|The user or service that created the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md). Supports `$filter` and `$orderby`.|
|createdDateTime|DateTimeOffset|The date and time when the resource was created. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md). Supports `$filter` and `$orderby`.|
|customFields|[microsoft.graph.security.caseManagement.customFieldValues](../resources/security-casemanagement-customfieldvalues.md)|Tenant-defined custom field values keyed by the exact **displayName** of each custom field definition. The property and its dynamic fields don't support `$filter`. Inherited from [case](../resources/security-casemanagement-case.md).|
|description|String|The description of the generic case. Supports `$filter`.|
|displayName|String|The display name of the generic case. Inherited from [case](../resources/security-casemanagement-case.md). Supports `$filter` and `$orderby`.|
|dueDateTime|DateTimeOffset|The target completion date and time for the generic case. Supports `$filter`.|
|id|String|The unique identifier for the resource. Inherited from [entity](../resources/entity.md). Supports `$filter` and `$orderby`.|
|lastModifiedBy|String|The user or service that last modified the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md). Supports `$filter` and `$orderby`.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the resource was last modified. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md). Supports `$filter` and `$orderby`.|
|priority|String|The priority assigned to the generic case. Possible values are: `veryLow`, `low`, `medium`, `high`, and `critical`. Supports `$filter`.|
|status|String|The tenant-defined lifecycle status of the generic case. Use a **displayName** value returned in the status tree by [List statuses](../api/security-casemanagement-casetypeconfiguration-list-statuses.md) from `/security/caseManagement/caseTypeConfigurations/genericCase/statuses`. Inherited from [case](../resources/security-casemanagement-case.md). Supports `$filter` (`eq`).|

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
  "customFields": {"@odata.type": "#microsoft.graph.security.caseManagement.customFieldValues"},
  "description": "String",
  "closingNotes": "String",
  "assignedTo": "String",
  "priority": "String",
  "dueDateTime": "String (timestamp)"
}
```
