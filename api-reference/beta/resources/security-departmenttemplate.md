---
title: "departmentTemplate resource type"
description: "Specifies the  department or business unit of an organization to which a label belongs."
author: "sseth"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# departmentTemplate resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the  department or business unit of an organization to which a label belongs. This resource supports CRUD operations to apply and manage the [filePlanDepartment](security-fileplandepartment.md) descriptor for a [retentionLabel](security-retentionlabel.md). The **department** file plan descriptor supplements a retention label to improve the manageability and organization of Microsoft 365 content.

Inherits from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptorTemplate.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List departments](../api/security-labelsroot-list-departments.md)|[microsoft.graph.security.departmentTemplate](../resources/security-departmenttemplate.md) collection|Get a list of the [microsoft.graph.security.departmentTemplate](../resources/security-departmenttemplate.md) objects and their properties.|
|[Create departments](../api/security-labelsroot-post-departments.md)|[microsoft.graph.security.departmentTemplate](../resources/security-departmenttemplate.md)|Create a new [microsoft.graph.security.departmentTemplate](../resources/security-departmenttemplate.md) object.|
|[Get departments](../api/security-departmenttemplate-get.md)|[microsoft.graph.security.departmentTemplate](../resources/security-departmenttemplate.md)|Read the properties and relationships of a [microsoft.graph.security.departmentTemplate](../resources/security-departmenttemplate.md) object.|
|[Delete departments](../api/security-labelsroot-delete-departments.md)|None|Delete a [microsoft.graph.security.departmentTemplate](../resources/security-departmenttemplate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|Represents the user who created the department descriptor. Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptorTemplate.md). Read-only.|
|createdDateTime|DateTimeOffset|Represents the date and time in which the department descriptor is created. Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptorTemplate.md). Read-only.|
|displayName|String|Unique string that defines a department name. Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptorTemplate.md).|
|id|String|Unique ID of the department. Inherited from [microsoft.graph.entity](../resources/entity.md). Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.departmentTemplate",
  "baseType": "microsoft.graph.security.filePlanDescriptor",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.departmentTemplate",
  "id": "String (identifier)",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)"
}
```

