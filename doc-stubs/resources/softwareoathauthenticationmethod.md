---
title: "softwareOathAuthenticationMethod resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# softwareOathAuthenticationMethod resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [authenticationMethod](../resources/authenticationmethod.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List softwareOathAuthenticationMethods](../api/softwareoathauthenticationmethod-list.md)|[softwareOathAuthenticationMethod](../resources/softwareoathauthenticationmethod.md) collection|Get a list of the [softwareOathAuthenticationMethod](../resources/softwareoathauthenticationmethod.md) objects and their properties.|
|[Create softwareOathAuthenticationMethod](../api/softwareoathauthenticationmethod-create.md)|[softwareOathAuthenticationMethod](../resources/softwareoathauthenticationmethod.md)|Create a new [softwareOathAuthenticationMethod](../resources/softwareoathauthenticationmethod.md) object.|
|[Get softwareOathAuthenticationMethod](../api/softwareoathauthenticationmethod-get.md)|[softwareOathAuthenticationMethod](../resources/softwareoathauthenticationmethod.md)|Read the properties and relationships of a [softwareOathAuthenticationMethod](../resources/softwareoathauthenticationmethod.md) object.|
|[Update softwareOathAuthenticationMethod](../api/softwareoathauthenticationmethod-update.md)|[softwareOathAuthenticationMethod](../resources/softwareoathauthenticationmethod.md)|Update the properties of a [softwareOathAuthenticationMethod](../resources/softwareoathauthenticationmethod.md) object.|
|[Delete softwareOathAuthenticationMethod](../api/softwareoathauthenticationmethod-delete.md)|None|Deletes a [softwareOathAuthenticationMethod](../resources/softwareoathauthenticationmethod.md) object.|
|[enableSmsSignIn](../api/softwareoathauthenticationmethod-enablesmssignin.md)|None|**TODO: Add Description**|
|[disableSmsSignIn](../api/softwareoathauthenticationmethod-disablesmssignin.md)|None|**TODO: Add Description**|
|[resetPassword](../api/softwareoathauthenticationmethod-resetpassword.md)|[passwordResetResponse](../resources/passwordresetresponse.md)|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [authenticationMethod](../resources/authenticationmethod.md)|
|secretKey|String|**TODO: Add Description**|
|timeIntervalInSeconds|Int32|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.softwareOathAuthenticationMethod",
  "baseType": "microsoft.strongAuthentication.authenticationMethod",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.softwareOathAuthenticationMethod",
  "id": "String (identifier)",
  "secretKey": "String",
  "timeIntervalInSeconds": "Integer"
}
```

