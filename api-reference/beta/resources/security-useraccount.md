---
title: "userAccount resource type"
description: "Represents common properties for a user account."
author: "BenAlfasi"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# userAccount resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents common properties for a user account.

## Properties

| Property          | Type   | Description                                                            |
|:------------------|:-------|:-----------------------------------------------------------------------|
| accountName       | String | The displayed name of the user account.                                |
| azureAdUserId     | String | The user object identifier in Microsoft Entra ID.       |
| displayName       | String | The user display name in Microsoft Entra ID.                                     |
| domainName        | String | The name of the Active Directory domain of which the user is a member. |
| userPrincipalName | String | The user principal name of the account in Microsoft Entra ID.                    |
| userSid           | String | The local security identifier of the user account.                     |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.userAccount"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.userAccount",
  "accountName": "String",
  "azureAdUserId": "String",
  "displayName": "String",
  "domainName": "String",
  "userPrincipalName": "String",
  "userSid": "String"  
}
```
