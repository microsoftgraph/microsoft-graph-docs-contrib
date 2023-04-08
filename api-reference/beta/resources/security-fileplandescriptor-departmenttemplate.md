---
title: "departmentTemplate resource type"
description: "**TODO: Add Description**"
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# departmentTemplate resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List departmentTemplates](../api/security-fileplandescriptor-list-departmenttemplate.md)|[microsoft.graph.security.departmentTemplate](../resources/security-fileplandescriptor-departmenttemplate.md) collection|Get a list of the [microsoft.graph.security.departmentTemplate](../resources/security-fileplandescriptor-departmenttemplate.md) objects and their properties.|
|[Create departmentTemplate](../api/security-fileplandescriptor-post-departmenttemplate.md)|[microsoft.graph.security.departmentTemplate](../resources/security-fileplandescriptor-departmenttemplate.md)|Create a new [microsoft.graph.security.departmentTemplate](../resources/security-fileplandescriptor-departmenttemplate.md) object.|
|[Get departmentTemplate](../api/security-fileplandescriptor-departmenttemplate-get.md)|[microsoft.graph.security.departmentTemplate](../resources/security-fileplandescriptor-departmenttemplate.md)|Read the properties and relationships of a [microsoft.graph.security.departmentTemplate](../resources/security-fileplandescriptor-departmenttemplate.md) object.|
|[Delete departmentTemplate](../api/security-fileplandescriptor-delete-departmenttemplate.md)|None|Delete a [microsoft.graph.security.departmentTemplate](../resources/security-fileplandescriptor-departmenttemplate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|
|displayName|String|**TODO: Add Description** Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.departmentTemplate",
  "baseType": "microsoft.graph.security.filePlanDescriptorTemplate",
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

