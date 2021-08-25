---
title: "accessPackageResourceAttribute resource type"
description: "Used for the `accessPackageAttribute` property of an access package resource."
author: "markwahl-msft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessPackageResourceAttribute resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for the `accessPackageAttribute` property of an [access package](..resources/accesspackage.md) resource. Attributes provide custom information about the requestor to the end system that can be used to make a decision for approval for an access package.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attributeDestination|[accessPackageAttributeDestination](../resources/accesspackageattributedestination.md)|Information about how to set the attribute.|
|attributeName|String|The name of the attribute in the end system.|
|attributeSource|[accessPackageAttributeSource](../resources/accesspackageattributesource.md)|Information about how to populate the attribute value when an `accessPackageAssignmentRequest` is being fulfilled.|
|id|String|Unique identifier for the attribute.|
|isEditable|String|Whether or not an existing attribute value can be edited by the requester.|
|isPersistedOnAssignmentRemoval|Boolean|Whether the attribute will remain in the end system after an assignment ends.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageAttribute"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageAttribute",
  "attributeDestination": {
    "@odata.type": "microsoft.graph.accessPackageAttributeDestination"
  },
  "attributeName": "String",
  "attributeSource": {
    "@odata.type": "microsoft.graph.accessPackageAttributeSource"
  },
  "id": "String (identifier)",
  "isEditable": "String",
  "isPersistedOnAssignmentRemoval": "Boolean"
}
```