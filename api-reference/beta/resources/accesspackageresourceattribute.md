---
title: "accessPackageResourceAttribute resource type"
description: "A resource that exposes properties for the requestor of an access package to provide custom information that may be used to make approval decisions for the access package."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessPackageResourceAttribute resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An access package resource attribute is the definition of a property that is required by an application.  This structure is included in an [accessPackageResource](../resources/accesspackageresource.md) of a catalog, for an application whose roles are included in an access package in that catalog.  When a user requests the access package, they must supply the value of the attribute, which, if the request is approved, is then written on the user's directory object.  The application can then subsequently [read the attribute of the user](user-get.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attributeDestination|[accessPackageResourceAttributeDestination](../resources/accesspackageresourceattributedestination.md)|Information about how to set the attribute, currently a [accessPackageUserDirectoryAttributeStore](accesspackageuserdirectoryattributestore.md).|
|attributeName|String|The name of the attribute in the end system.|
|attributeSource|[accessPackageResourceAttributeSource](../resources/accesspackageresourceattributesource.md)|Information about how to populate the attribute value when an **accessPackageAssignmentRequest** is being fulfilled, currently a [accessPackageResourceAttributeQuestion](accesspackageresourceattributequestion.md).|
|id|String|Unique identifier for the attribute. Read-only. |
|isEditable|String| Specifies whether or not an existing attribute value can be edited by the requester.|
|isPersistedOnAssignmentRemoval|Boolean| Specifies whether the attribute will remain in the end system after an assignment ends.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageResourceAttribute"
}
-->
``` json
{
  "attributeDestination": {
    "@odata.type": "#microsoft.graph.accessPackageUserDirectoryAttributeStore"
  },
  "attributeName": "extension_2b676109c7c74ae2b41549205f1947ed_personalTitle",
  "attributeSource": {
    "@odata.type": "#microsoft.graph.accessPackageResourceAttributeQuestion",
    "question": {
      "@odata.type": "microsoft.graph.accessPackageQuestion"
    }
  },
  "id": "String (identifier)",
  "isEditable": true,
  "isPersistedOnAssignmentRemoval": true
}
```
