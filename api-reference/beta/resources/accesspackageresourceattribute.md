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

An access package resource attribute is the definition of a property that a user is required to have to be able to access an application.  This structure is included in an [accessPackageResource](../resources/accesspackageresource.md) of a catalog, for an application whose roles are included in an access package in that catalog.  When a user requests the access package, they must supply the value of the attribute, which, if the request is approved, is then written on the user's directory object.  The application can then subsequently [read the attribute of the user](../api/user-get.md).

If the **attributeDestination** is [accessPackageUserDirectoryAttributeStore](accesspackageuserdirectoryattributestore.md), then the attribute indicated by **attributeName** must be a writable property of the [user](user.md) object.  The writable properties are those listed in the [update user](../api/user-update.md) request body section as having type **String**, and properties registered as [extension properties](extensionproperty.md) on the **User** target object with data type **String**.

For example, suppose an application requires two user attributes, a user's job title and their personal title. For member users, values of these attributes could be synchronized from the `jobTitle` and `personalTitle` attributes in an on-premises directory. Because `personalTitle` is not one of the default user properties, this would require [creating a directory schema extension](../api/application-post-extensionproperty.md) for the personal title on the user object type.  When creating a resource request for this application, you can include two access package resource attributes, one for the user property `jobTitle`, and another with the name of the directory schema extension property that was created for the personal title, such as `extension_2b676109c7c74ae2b41549205f1947ed_personalTitle`.

If the **attributeSource** of the attribute is an [accessPackageResourceAttributeQuestion](accesspackageresourceattributequestion.md), then the requestor's supplied value is stored as provided on the user object, and made available to the application and other Microsoft Graph clients.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attributeDestination|[accessPackageResourceAttributeDestination](../resources/accesspackageresourceattributedestination.md)|Information about how to set the attribute, currently a [accessPackageUserDirectoryAttributeStore](accesspackageuserdirectoryattributestore.md).|
|attributeName|String|The name of the attribute in the end system. If the destination if `accessPackageUserDirectoryAttributeStore`, then a user property such as `jobTitle` or a directory schema extension for the user object type, such as `extension_2b676109c7c74ae2b41549205f1947ed_personalTitle`.|
|attributeSource|[accessPackageResourceAttributeSource](../resources/accesspackageresourceattributesource.md)|Information about how to populate the attribute value when an **accessPackageAssignmentRequest** is being fulfilled, currently a [accessPackageResourceAttributeQuestion](accesspackageresourceattributequestion.md).|
|id|String|Unique identifier for the attribute on the access package resource. Read-only. |
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
  "@odata.type": "#microsoft.graph.accessPackageResourceAttribute",
  "attributeDestination": {
    "@odata.type": "microsoft.graph.accessPackageResourceAttributeDestination"
  },
  "attributeName": "String",
  "attributeSource": {
    "@odata.type": "microsoft.graph.accessPackageResourceAttributeSource"
  },
  "id": "String (identifier)",
  "isEditable": "Boolean",
  "isPersistedOnAssignmentRemoval": "Boolean"
}
```
