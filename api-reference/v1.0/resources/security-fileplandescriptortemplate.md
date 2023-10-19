---
title: "filePlanDescriptorTemplate resource type"
description: "Specifies the properties common to the template resources for file plan descriptors."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# filePlanDescriptorTemplate resource type

Namespace: microsoft.graph.security

Specifies the properties common to the template resources for file plan descriptors. Base type for each of the template resources: [authorityTemplate](security-authoritytemplate.md), [categoryTemplate](security-categorytemplate.md), [citationTemplate](security-citationtemplate.md), [departmentTemplate](security-departmenttemplate.md), [filePlanReferenceTemplate](security-fileplanreferencetemplate.md), and [subCategoryTemplate](security-subcategorytemplate.md).

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|Represents the user who created the filePlanDescriptorTemplate column.|
|createdDateTime|DateTimeOffset|Represents the date and time in which the filePlanDescriptorTemplate is created.|
|displayName|String|Unique string that defines a filePlanDescriptorTemplate name.|
|id|String|Unique ID of the filePlanDecriptorTemplate column. Inherited from [microsoft.graph.entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.filePlanDescriptorTemplate",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.filePlanDescriptorTemplate",
  "id": "String (identifier)",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)"
}
```

