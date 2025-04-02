---
title: "externalAuthenticationMethod resource type"
description: "**TODO: Add Description**"
author: "rannderson"
ms.date: 04/01/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# externalAuthenticationMethod resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [authenticationMethod](../resources/authenticationmethod.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/authentication-list-externalauthenticationmethods.md)|[externalAuthenticationMethod](../resources/externalauthenticationmethod.md) collection|Get a list of the externalAuthenticationMethod objects and their properties.|
|[Create](../api/authentication-post-externalauthenticationmethods.md)|[externalAuthenticationMethod](../resources/externalauthenticationmethod.md)|Create a new externalAuthenticationMethod object.|
|[Get](../api/externalauthenticationmethod-get.md)|[externalAuthenticationMethod](../resources/externalauthenticationmethod.md)|Read the properties and relationships of an externalAuthenticationMethod object.|
|[Update](../api/externalauthenticationmethod-update.md)|[externalAuthenticationMethod](../resources/externalauthenticationmethod.md)|Update the properties of an externalAuthenticationMethod object.|
|[Delete](../api/authentication-delete-externalauthenticationmethods.md)|None|Delete an externalAuthenticationMethod object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|configurationId|String|A unique identifier used to manage and integrate external auth methods within Microsoft Entra ID|
|createdDateTime|DateTimeOffset|Represents the date and time when an entity was created. Inherited from [authenticationMethod](../resources/authenticationmethod.md).|
|displayName|String|Custom name given to the registered external authentication method.|
|id|String|The unique identifier for an entity. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalAuthenticationMethod",
  "baseType": "microsoft.graph.authenticationMethod",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalAuthenticationMethod",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "configurationId": "String",
  "displayName": "String"
}
```

