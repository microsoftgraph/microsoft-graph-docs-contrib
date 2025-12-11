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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a **user** in Microsoft Teams.


Inherits from [identity](../resources/identity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Inherited from [identity](../resources/identity.md). Display name of the user. Optional.|
|id|String|Inherited from [identity](../resources/identity.md). ID of the user. |
|tenantId|String|Identifier of tenant, which user is part of. Optional. |
|userIdentityType|teamworkUserIdentityType| Type of user. The possible values are: `aadUser`, `onPremiseAadUser`, `anonymousGuest`, `federatedUser`, `personalMicrosoftAccountUser`, `skypeUser`, `phoneUser`, `emailUser` and `azureCommunicationServicesUser`.|
|userPrincipalName|String|User principal name (UPN) of the user.|

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
  "displayName": "String",
  "id": "String (identifier)",
  "tenantId": "String",
  "userIdentityType": "String",
  "userPrincipalName": "String"
}
```

