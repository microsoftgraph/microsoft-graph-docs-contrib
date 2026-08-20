---
title: "case resource type (case management)"
description: "Represents an abstract security case that tracks an investigation and organizes related work."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# case resource type (case management)

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract security case that tracks an investigation and organizes related tasks, activities, relations, and attachments. Use the [genericCase](../resources/security-casemanagement-genericcase.md) derived type to create case instances. You can't create [incidentCase](../resources/security-casemanagement-incidentcase.md) instances with API requests; incident cases are created by the service. Instances are differentiated by `@odata.type`.
This is an abstract type.

For cast segments in URLs, use the full type name, for example `microsoft.graph.security.caseManagement.genericCase` or `microsoft.graph.security.caseManagement.incidentCase`.

Inherits from [microsoft.graph.security.caseManagement.caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).

## Methods

Use the [Update](../api/security-casemanagement-case-update.md) method to update **displayName** and **status** for all case types. Other mutable properties depend on the concrete case type.

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-casemanagementroot-list-cases.md)|[microsoft.graph.security.caseManagement.case](../resources/security-casemanagement-case.md) collection|List security cases.|
|[Create](../api/security-casemanagementroot-post-cases.md)|[microsoft.graph.security.caseManagement.case](../resources/security-casemanagement-case.md)|Create a security case by specifying a supported derived type in `@odata.type`. The [incidentCase](../resources/security-casemanagement-incidentcase.md) derived type isn't supported for create requests.|
|[Get](../api/security-casemanagement-case-get.md)|[microsoft.graph.security.caseManagement.case](../resources/security-casemanagement-case.md)|Read the properties and relationships of a security case.|
|[Update](../api/security-casemanagement-case-update.md)|[microsoft.graph.security.caseManagement.case](../resources/security-casemanagement-case.md)|Update the supported mutable properties of a security case.|
|[Delete](../api/security-casemanagementroot-delete-cases.md)|None|Delete a security case.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|String|The user or service that created the case. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md). Supports `$filter` and `$orderby`.|
|createdDateTime|DateTimeOffset|The date and time when the case was created. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md). Supports `$filter` and `$orderby`.|
|customFields|[microsoft.graph.security.caseManagement.customFieldValues](../resources/security-casemanagement-customfieldvalues.md)|Tenant-defined custom field values keyed by the exact **displayName** of each custom field definition. The property and its dynamic fields don't support `$filter`.|
|displayName|String|The display name of the case. Supports `$filter` and `$orderby`.|
|id|String|The unique identifier for the case. Inherited from [entity](../resources/entity.md). Supports `$filter` and `$orderby`.|
|lastModifiedBy|String|The user or service that last modified the case. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md). Supports `$filter` and `$orderby`.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the case was last modified. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md). Supports `$filter` and `$orderby`.|
|status|String|The tenant-defined lifecycle status of the case. Use a **displayName** value returned in the status tree by [List statuses](../api/security-casemanagement-casetypeconfiguration-list-statuses.md) from `/security/caseManagement/caseTypeConfigurations/genericCase/statuses` or `/security/caseManagement/caseTypeConfigurations/incidentCase/statuses`, depending on the case type. Supports `$filter` (`eq`).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|activities|[microsoft.graph.security.caseManagement.activity](../resources/security-casemanagement-activity.md) collection|The timeline of comments and audit events associated with the case. Supports `$expand`.|
|attachments|[microsoft.graph.security.caseManagement.attachment](../resources/security-casemanagement-attachment.md) collection|Evidence files and metadata associated with the case. Supports `$expand`.|
|relations|[microsoft.graph.security.caseManagement.relation](../resources/security-casemanagement-relation.md) collection|Links from the case to related security resources. Supports `$expand`.|
|tasks|[microsoft.graph.security.caseManagement.task](../resources/security-casemanagement-task.md) collection|Tasks used to track work required to resolve the case. Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.caseManagement.case",
  "baseType": "microsoft.graph.security.caseManagement.caseManagementEntity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.case",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "createdBy": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": "String",
  "displayName": "String",
  "status": "String",
  "customFields": {"@odata.type": "#microsoft.graph.security.caseManagement.customFieldValues"}
}
```
