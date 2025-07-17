---
title: "authorityTemplate resource type"
description: "Specifies the underlying authority that describes the type of content to be retained and its retention schedule."
author: "sseth"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# authorityTemplate resource type

Namespace: microsoft.graph.security

Specifies the underlying authority that describes the type of content to be retained and its retention schedule. This resource supports CRUD operations to apply and manage the [filePlanAuthority](security-fileplanauthority.md) descriptor for a [retentionLabel](security-retentionlabel.md). The **authority** file plan descriptor supplements a retention label to improve the manageability and organization of Microsoft 365 content.

Inherits from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptorTemplate.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-labelsroot-list-authorities.md)|[microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md) collection|Get a list of the [microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md) objects and their properties.|
|[Create](../api/security-labelsroot-post-authorities.md)|[microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md)|Create a new [microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md) object.|
|[Get](../api/security-authoritytemplate-get.md)|[microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md)|Read the properties and relationships of a [microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md) object.|
|[Delete](../api/security-labelsroot-delete-authorities.md)|None|Delete a [microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|Represents the user who created the authority descriptor. Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptorTemplate.md). Read-only.|
|createdDateTime|DateTimeOffset|Represents the date and time in which the authority descriptor is created. Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptorTemplate.md). Read-only.|
|displayName|String|Unique string that defines an authority name. Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptorTemplate.md).|
|id|String|Unique ID of the authority. Inherited from [microsoft.graph.entity](../resources/entity.md). Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.authorityTemplate",
  "baseType": "microsoft.graph.security.filePlanDescriptor",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.authorityTemplate",
  "id": "String (identifier)",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)"
}
```

