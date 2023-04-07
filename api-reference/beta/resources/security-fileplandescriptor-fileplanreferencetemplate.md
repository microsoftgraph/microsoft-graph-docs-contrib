---
title: "filePlanReferenceTemplate resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# filePlanReferenceTemplate resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptortemplate.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List filePlanReferenceTemplates](../api/security-fileplandescriptor-list-fileplanreferencetemplate.md)|[microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md) collection|Get a list of the [microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md) objects and their properties.|
|[Create filePlanReferenceTemplate](../api/security-fileplandescriptor-post-fileplanreferencetemplate.md)|[microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md)|Create a new [microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md) object.|
|[Get filePlanReferenceTemplate](../api/security-fileplanreferencetemplate-get.md)|[microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md)|Read the properties and relationships of a [microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md) object.|
|[Update filePlanReferenceTemplate](../api/security-fileplanreferencetemplate-update.md)|[microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md)|Update the properties of a [microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md) object.|
|[Delete filePlanReferenceTemplate](../api/security-fileplandescriptor-delete-fileplanreferencetemplate.md)|None|Delete a [microsoft.graph.security.filePlanReferenceTemplate](../resources/security-fileplanreferencetemplate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptortemplate.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptortemplate.md).|
|displayName|String|**TODO: Add Description** Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptortemplate.md).|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.filePlanReferenceTemplate",
  "baseType": "microsoft.graph.security.filePlanDescriptorTemplate",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.filePlanReferenceTemplate",
  "id": "String (identifier)",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)"
}
```

