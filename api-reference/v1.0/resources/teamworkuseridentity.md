---
title: "teamworkUserIdentity resource type"
description: "Represents a user in Microsoft Teams"
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkUserIdentity resource type

Namespace: microsoft.graph

Represents a user in Microsoft Teams. The object contains user's Id, optional name and the type of user it is.


Inherits from [identity](../resources/identity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Inherited from [identity](../resources/identity.md). Optional display name of the user.|
|id|String|Inherited from [identity](../resources/identity.md). Id of the user. |
|userIdentityType|teamworkUserIdentityType| Type of user. Possible values are: `aadUser`, `onPremiseAadUser`, `anonymousGuest`, `federatedUser`, `personalMicrosoftAccountUser`, `skypeUser`, `phoneUser`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkUserIdentity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkUserIdentity",
  "id": "String (identifier)",
  "displayName": "String",
  "userIdentityType": "String"
}
```

