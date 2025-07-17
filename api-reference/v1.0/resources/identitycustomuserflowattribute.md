---
title: "identityCustomUserFlowAttribute resource type"
description: "Represents a custom user flow attribute that can be used in self-service sign-up user flows in Microsoft Entra External ID in workforce and external tenants, and in Azure AD B2C tenants."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 05/21/2024
---

# identityCustomUserFlowAttribute resource type

Namespace: microsoft.graph

Represents a custom user flow attribute that can be used in self-service sign-up user flows in Microsoft Entra External ID in workforce and external tenants, and in Azure AD B2C tenants.

Inherits from [identityUserFlowAttribute](../resources/identityuserflowattribute.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|dataType|identityUserFlowAttributeDataType|The data type of the user flow attribute, and can't be modified after the custom user flow attribute is created. The supported values for **dataType** are: `string` , `boolean` , `int64` , `stringCollection` , `dateTime`. Inherited from [identityUserFlowAttribute](../resources/identityuserflowattribute.md).|
|description|String|The description of the user flow attribute that's shown to the user at the time of sign up. Inherited from [identityUserFlowAttribute](../resources/identityuserflowattribute.md)|
|displayName|String|The display name of the user flow attribute. Inherited from [identityUserFlowAttribute](../resources/identityuserflowattribute.md)|
|id|String|The identifier of the user flow attribute. Read-only. Inherited from [identityUserFlowAttribute](../resources/identityuserflowattribute.md)|
|userFlowAttributeType|identityUserFlowAttributeType|The type of the user flow attribute and is a read-only attribute that is automatically set. The value for this attribute is `custom`. Inherited from [identityUserFlowAttribute](../resources/identityuserflowattribute.md).|


## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityCustomUserFlowAttribute",
  "baseType": "microsoft.graph.identityUserFlowAttribute",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.identityCustomUserFlowAttribute",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "userFlowAttributeType": "String",
  "dataType": "String"
}
```
