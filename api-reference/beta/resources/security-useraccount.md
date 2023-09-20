---
title: "userAccount resource type"
description: "Represents common properties for a user account."
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# userAccount resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents common properties for a user account.

## Properties

| Property          | Type   | Description                                                            |
|:------------------|:-------|:-----------------------------------------------------------------------|
| accountName       | String | The displayed name of the user account.                                |
| azureAdUserId     | String | The user object identifier in Azure Active Directory (Azure AD).       |
| displayName       | String | The user display name in Azure AD.                                     |
| domainName        | String | The name of the Active Directory domain of which the user is a member. |
| userPrincipalName | String | The user principal name of the account in Azure AD.                    |
| userSid           | String | The local security identifier of the user account.                     |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
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
