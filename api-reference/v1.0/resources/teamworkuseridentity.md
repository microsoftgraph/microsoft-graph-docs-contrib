---
title: "teamworkUserIdentity resource type"
description: "Represents a user in Microsoft Teams."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamworkUserIdentity resource type

Namespace: microsoft.graph

Represents a **user** in Microsoft Teams.


Inherits from [identity](../resources/identity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Inherited from [identity](../resources/identity.md). Display name of the user. Optional.|
|id|String|Inherited from [identity](../resources/identity.md). ID of the user. |
|userIdentityType|teamworkUserIdentityType| Type of user. The possible values are: `aadUser`, `onPremiseAadUser`, `anonymousGuest`, `federatedUser`, `personalMicrosoftAccountUser`, `skypeUser`, `phoneUser`, `unknownFutureValue` and `emailUser`.|
|tenantId|String|Identifier of tenant, which user is part of. Optional. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

