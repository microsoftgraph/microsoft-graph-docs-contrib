---
title: "temporaryAccessPassAuthenticationMethod resource type"
description: "A representation of a Temporary Access Pass registered to a user"
author: "inbarckms"
ms.author: inbarc
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# temporaryAccessPassAuthenticationMethod resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A representation of a Temporaty Access Pass registered to a user. Temporary Access Pass is a time-limited passcode that serves as a strong credential and allows onboarding of passwordless credentials.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/temporaryaccesspassauthenticationmethod-list.md)|[temporaryAccessPassAuthenticationMethod](../resources/temporaryaccesspassauthenticationmethod.md) collection|Retrieve a list of the user's temporaryAccessPassAuthenticationMethod. Users may only have one Temporary Access Pass authentication method.|
|[Get](../api/temporaryaccesspassauthenticationmethod-get.md)|[temporaryAccessPassAuthenticationMethod](../resources/temporaryaccesspassauthenticationmethod.md)|Retrieve the properties of the user's temporaryAccessPassAuthenticationMethod object.||
|[Create](../api/temporaryaccesspassauthenticationmethod-create.md)|[temporaryAccessPassAuthenticationMethod](../resources/temporaryaccesspassauthenticationmethod.md)|Create a user's temporaryAccessPassAuthenticationMethod object.|
|[Delete](../api/temporaryaccesspassauthenticationmethod-delete.md)|None|Delete a user's temporaryAccessPassAuthenticationMethod object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the Temporary Access Pass registered to this user.|
|temporaryAccessPass|String|The temporaryAccessPass used to authenticate. Returned only on creation of a new temporaryAccessPass; returned as NULL with GET.|
|createdDateTime|DateTimeOffset|The date and time when the temporaryAccessPass was created.|
|startDateTime|DateTimeOffset|The date and time when the temporaryAccessPass becomes available to use.|
|lifetimeInMinutes|Int32|The lifetime of the temporaryAccessPass in minutes starting at startDateTime. Minimum 10, Maximum 43200 (equivalent to 30 days).|
|isUsableOnce|Boolean|Determines if the pass is limited to a one time use. If `True` – the pass can be used once, if `False` – the pass can be used multiple times within the temporaryAccessPass life time.|
|isUsable|Boolean|The state of the authentication method that indicates whether it's currently usable by the user.|
|methodUsabilityReason|String|Details about usability state (isUsable). Reasons can include: enabledByPolicy, disabledByPolicy, expired, notYetValid, oneTimeUsed.|


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.temporaryAccessPassAuthenticationMethod",
  "baseType": "microsoft.graph.authenticationMethod",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.temporaryAccessPassAuthenticationMethod",
  "id": "String (identifier)",
  "temporaryAccessPass": "String",
  "createdDateTime": "String (timestamp)",
  "startDateTime": "String (timestamp)",
  "lifetimeInMinutes": "Integer",
  "isUsableOnce": "Boolean",
  "isUsable": "Boolean",
  "methodUsabilityReason": "String"
}
```
