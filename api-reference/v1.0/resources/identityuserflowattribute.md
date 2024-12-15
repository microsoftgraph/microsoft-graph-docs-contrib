---
title: "identityUserFlowAttribute resource type"
description: "Represents attributes that can be added to a user flow in Microsoft Entra External ID in workforce and external tenants, and in Azure AD B2C tenants."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-sign-in"
author: "nanguil"
ms.date: 05/21/2024
---

# identityUserFlowAttribute resource type

Namespace: microsoft.graph

Represents attributes that can be added to a user flow in Microsoft Entra External ID in workforce and external tenants, and in Azure AD B2C tenants.

Configuring user flow attributes in your tenant allows you to collect information about an external user during sign-up. You can choose to collect a built-in set of attribute; for example, Given Name, Surname, City, and Postal Code; or you can configure custom user flow attributes. Custom user flow attributes are an abstraction over [directory extensions](/graph/extensibility-overview#directory-azure-ad-extensions).

[identityBuiltInUserFlowAttributes](../resources/identitybuiltinuserflowattribute.md) and [identityCustomUserFlowAttributes](../resources/identitycustomuserflowattribute.md) both inherit from this base type.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List](../api/identityuserflowattribute-list.md)|identityUserFlowAttributes collection|Retrieve all built-in and custom user flow attributes.|
|[Create](../api/identityuserflowattribute-post.md)|identityUserFlowAttribute|Create a new custom user flow attribute.|
|[Get](../api/identityuserflowattribute-get.md) |identityUserFlowAttribute|Retrieve properties of a user flow attribute.|
|[Update](../api/identityuserflowattribute-update.md)|None|Update a custom user flow attribute.|
|[Delete](../api/identityuserflowattribute-delete.md)|None|Delete a custom user flow attribute.|

## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|dataType|identityUserFlowAttributeDataType|The data type of the user flow attribute. Can't be modified after the custom user flow attribute is created. The supported values for **dataType** are: `string` , `boolean` , `int64` , `stringCollection` , `dateTime`, `unknownFutureValue`. <br/><br/> Supports `$filter` (`eq`, `ne`).|
|displayName|String|The display name of the user flow attribute. <br/><br/> Supports `$filter` (`eq`, `ne`). |
|description|String|The description of the user flow attribute that's shown to the user at the time of sign up.|
|id|String|The identifier of the user flow attribute. Read-only. <br/><br/> Supports `$filter` (`eq`, `ne`). |
|userFlowAttributeType|identityUserFlowAttributeType|The type of the user flow attribute. Read-only. Depending on the type of attribute, the values for this property are `builtIn`, `custom`, `required`, `unknownFutureValue`. <br/><br/> Supports `$filter` (`eq`, `ne`). |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityUserFlowAttribute"
} -->

```json
{
    "@odata.type": "#microsoft.graph.identityUserFlowAttribute",
    "id": "String (identifier)",
    "displayName": "String",
    "description": "String",
    "userFlowAttributeType": "String",
    "dataType": "String"
}
```
