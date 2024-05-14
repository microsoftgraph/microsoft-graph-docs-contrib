---
title: "platformCredentialAuthenticationMethod resource type"
description: "A representation of a Platform Credential instance registered to a user on macOS. Platform Credential is a sign-in authentication method."
author: "Veena11"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# platformCredentialAuthenticationMethod resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a platform credential instance registered to a user on Mac OS. Platform Credential is a sign-in authentication method for Mac OS devices.

This derived type inherits from the [authenticationMethod](authenticationmethod.md) resource type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List platformCredentialAuthenticationMethods](../api/platformcredentialauthenticationmethod-list.md)|[platformCredentialAuthenticationMethod](../resources/platformcredentialauthenticationmethod.md) collection|Get a list of the [platformCredentialAuthenticationMethod](../resources/platformcredentialauthenticationmethod.md) objects and their properties.|
|[Get platformCredentialAuthenticationMethod](../api/platformcredentialauthenticationmethod-get.md)|[platformCredentialAuthenticationMethod](../resources/platformcredentialauthenticationmethod.md)|Read the properties and relationships of a [platformCredentialAuthenticationMethod](../resources/platformcredentialauthenticationmethod.md) object.|
|[Delete platformCredentialAuthenticationMethod](../api/platformcredentialauthenticationmethod-delete.md)|None|Delete a [platformCredentialAuthenticationMethod](../resources/platformcredentialauthenticationmethod.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time that this Platform Credential Key was registered.|
|displayName|String|The name of the device on which Platform Credential is registered.|
|id|String|A unique identifier for this authentication method. Inherited from [authenticationMethod](../resources/authenticationmethod.md)|
|keyStrength|authenticationMethodKeyStrength|Key strength of this Platform Credential key. Possible values are: `normal`, `weak`, `unknown`.|
|platform|authenticationMethodPlatform|Platform on which this Platform Credential key is present. Possible values are: `unknown`, `windows`, `macOS`,`iOS`, `android`, `linux`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|device|[device](../resources/device.md)|The registered device on which this Platform Credential resides. Supports `$expand`. <br/><br/>When you get a user's Platform Credential registration information, this property is returned only on a single GET and when you specify `?$expand`. For example, GET `/users/admin@contoso.com/authentication/platformCredentialAuthenticationMethod/_jpuR-TGZtk6aQCLF3BQjA2?$expand=device`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.platformCredentialAuthenticationMethod",
  "baseType": "microsoft.graph.authenticationMethod",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.platformCredentialAuthenticationMethod",
  "id": "String (Identifier)",
  "displayName": "String",
  "createdDateTime": "String",
  "keyStrength": {"@odata.type": "microsoft.graph.authenticationMethodKeyStrength"},
  "platform": {"@odata.type": "microsoft.graph.authenticationMethodPlatform"}
}
```
