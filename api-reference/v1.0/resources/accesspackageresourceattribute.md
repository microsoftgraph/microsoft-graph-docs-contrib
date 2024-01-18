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

An access package resource attribute is the definition of a property that a user is required to have to be able to access an application. This structure is included in an [accessPackageResource](../resources/accesspackageresource.md) of a catalog, for an application whose roles are included in an access package in that catalog. When a user requests the access package, they must supply the value of the attribute, which, if the request is approved, is then written on the user's directory object. The application can then subsequently [read the attribute of the user](../api/user-get.md).

For assignments to a user where the **destination** is an [accessPackageUserDirectoryAttributeStore](accesspackageuserdirectoryattributestore.md) object type, then the attribute indicated by **name** must be a writable property of the [user](user.md) object. These writable properties are String types registered as [extension properties](extensionproperty.md) on the target **User** object.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|destination|[accessPackageResourceAttributeDestination](../resources/accesspackageresourceattributedestination.md)|Information about how to set the attribute, currently a [accessPackageUserDirectoryAttributeStore](accesspackageuserdirectoryattributestore.md) type.|
|name|String|The name of the attribute in the end system. If the destination is `accessPackageUserDirectoryAttributeStore`, then a user property such as **jobTitle** or a directory schema extension for the user object type, such as `extension_2b676109c7c74ae2b41549205f1947ed_personalTitle`. |
|source|[accessPackageResourceAttributeSource](../resources/accesspackageresourceattributesource.md)|Information about how to populate the attribute value when an **accessPackageAssignmentRequest** is being fulfilled, currently a [accessPackageResourceAttributeQuestion](accesspackageresourceattributequestion.md) type.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageResourceAttribute"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageResourceAttribute",
  "destination": {
    "@odata.type": "microsoft.graph.accessPackageResourceAttributeDestination"
  },
  "name": "String",
  "source": {
    "@odata.type": "microsoft.graph.accessPackageResourceAttributeSource"
  }
}
```
