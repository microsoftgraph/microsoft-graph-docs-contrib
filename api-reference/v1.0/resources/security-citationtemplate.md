---
title: "citationTemplate resource type"
description: "The specific rule or regulation created by a jurisdiction used to determine whether certain labels and content should be retained or deleted."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# citationTemplate resource type

Namespace: microsoft.graph.security

Represents the specific rule or regulation created by a jurisdiction used to determine whether certain labels and content should be retained or deleted. This resource supports CRUD operations to apply and manage the [filePlanCitation](security-fileplancitation.md) descriptor for a [retentionLabel](security-retentionlabel.md). The **citation** file plan descriptor supplements a retention label to improve the manageability and organization of Microsoft 365 content.

Inherits from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptorTemplate.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List citations](../api/security-labelsroot-list-citations.md)|[microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md) collection|Get a list of the [microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md) objects and their properties.|
|[Create citations](../api/security-labelsroot-post-citations.md)|[microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md)|Create a new [microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md) object.|
|[Get citations](../api/security-citationtemplate-get.md)|[microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md)|Read the properties and relationships of a [microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md) object.|
|[Delete citations](../api/security-labelsroot-delete-citations.md)|None|Delete a [microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|citationJurisdiction|String|Represents the jurisdiction or agency that published the citation.|
|citationUrl|String|Represents the URL to the published citation.|
|createdBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|Represents the user who created the citation descriptor. Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptorTemplate.md). Read-only.|
|createdDateTime|DateTimeOffset|Represents the date and time in which the citation descriptor is created. Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptorTemplate.md). Read-only.|
|displayName|String|Unique string that defines a citation name. Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptorTemplate.md).|
|id|String|Unique ID of the citation. Inherited from [microsoft.graph.entity](../resources/entity.md). Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.citationTemplate",
  "baseType": "microsoft.graph.security.filePlanDescriptor",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.citationTemplate",
  "id": "String (identifier)",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "citationUrl": "String",
  "citationJurisdiction": "String"
}
```

