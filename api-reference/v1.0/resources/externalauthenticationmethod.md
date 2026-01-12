---
title: "externalAuthenticationMethod resource type"
description: "A representation of an external authentication method registered to a user. External authentication methods are used to sign in to Microsoft Entra ID using an external identity provider."
author: "rannderson"
ms.date: 01/06/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# externalAuthenticationMethod resource type

Namespace: microsoft.graph

A representation of an external authentication method registered to a user. External authentication methods are used to sign in to Microsoft Entra ID using an external identity provider.

The **externalAuthenticationMethod** resource is a derived type of the [authenticationMethod](../resources/authenticationmethod.md) resource type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/authentication-list-externalauthenticationmethods.md)|[externalAuthenticationMethod](../resources/externalauthenticationmethod.md) collection|Get a list of the externalAuthenticationMethod objects and their properties.|
|[Create](../api/authentication-post-externalauthenticationmethods.md)|[externalAuthenticationMethod](../resources/externalauthenticationmethod.md)|Create a new externalAuthenticationMethod object.|
|[Get](../api/externalauthenticationmethod-get.md)|[externalAuthenticationMethod](../resources/externalauthenticationmethod.md)|Read the properties and relationships of an externalAuthenticationMethod object.|
|[Delete](../api/authentication-delete-externalauthenticationmethods.md)|None|Delete an externalAuthenticationMethod object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|configurationId|String|A unique identifier used to manage the external auth method within Microsoft Entra ID.|
|createdDateTime|DateTimeOffset|Represents the date and time when an entity was created. Inherited from [authenticationMethod](../resources/authenticationmethod.md).|
|displayName|String|Custom name given to the registered external authentication method.|
|id|String|The unique identifier for an the authentication method for the user. Inherited from [entity](../resources/entity.md).|

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

