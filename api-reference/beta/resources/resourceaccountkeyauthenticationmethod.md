---
title: "resourceAccountKeyAuthenticationMethod resource type"
description: "Represents a resource account key credential registered on a shared device for passwordless authentication. Resource account keys enable shared devices to silently sign in to Microsoft Entra ID without user interaction."
author: "akgoel"
ms.date: 06/23/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# resourceAccountKeyAuthenticationMethod resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a resource account key credential registered on a shared device (such as a Teams Meeting Room or Teams phone) for passwordless authentication. Resource account keys enable shared devices to silently sign in to Microsoft Entra ID without user interaction.

Inherits from [authenticationMethod](../resources/authenticationmethod.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/authentication-list-resourceaccountkeyauthenticationmethods.md)|[resourceAccountKeyAuthenticationMethod](../resources/resourceaccountkeyauthenticationmethod.md) collection|Get a list of the resourceAccountKeyAuthenticationMethod objects and their properties.|
|[Get](../api/resourceaccountkeyauthenticationmethod-get.md)|[resourceAccountKeyAuthenticationMethod](../resources/resourceaccountkeyauthenticationmethod.md)|Read the properties and relationships of a resourceAccountKeyAuthenticationMethod object.|
|[Delete](../api/resourceaccountkeyauthenticationmethod-delete.md)|None|Delete a resourceAccountKeyAuthenticationMethod object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the resource account key was registered. Inherited from [authenticationMethod](../resources/authenticationmethod.md).|
|displayName|String|The display name of the resource account key credential as shown in the Teams Room interface.|
|id|String|A unique identifier for this instance of an authentication method. Inherited from [entity](../resources/entity.md).|
|isUsable|Boolean|Indicates whether the method is usable for sign-in. **Returned by default.**|
|lastUsedDateTime|DateTimeOffset|The date and time when this authentication method was last used for sign-in. **Requires `$select`.** Inherited from [authenticationMethod](../resources/authenticationmethod.md).|
|methodUsabilityReason|String|The reason for the usability state. Possible values are: `EnabledByPolicy`, `DisabledByPolicy`. **Returned by default.**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|device|[device](../resources/device.md)|The registered device on which this resource account key resides. Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.resourceAccountKeyAuthenticationMethod",
  "baseType": "microsoft.graph.authenticationMethod",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.resourceAccountKeyAuthenticationMethod",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "isUsable": "Boolean",
  "lastUsedDateTime": "String (timestamp)",
  "methodUsabilityReason": "String"
}
```
