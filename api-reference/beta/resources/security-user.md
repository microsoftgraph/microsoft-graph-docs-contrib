---
title: "User resource type"
description: "User fields"
author: "SamuelBenichou"
ms.date: 06/22/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# user resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the user.

Inherits from [microsoft.graph.security.identityAccounts](../resources/security-identityaccounts.md).

## Methods
|Method|Return type| Description                                                         |
|:---|:---|:--------------------------------------------------------------------|
|[List](../api/security-identitycontainer-list-identityaccounts.md)|[microsoft.graph.security.identityAccounts](../resources/security-identityaccounts.md) collection| Get a list of the identity account objects and their properties.    |
|[Get](../api/security-identityaccounts-get.md)|[microsoft.graph.security.identityAccounts](../resources/security-identityaccounts.md)| Read the properties and relationships of a identity account object. |
|[invokeAction](../api/security-identityaccounts-invokeaction.md)|[microsoft.graph.security.invokeActionResult](../resources/security-invokeactionresult.md)| Invoke an action for the account.                                   |

## Properties
|Property|Type| Description                                                                                                                                                                    |
|:---|:---|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|accounts|[microsoft.graph.security.account](../resources/security-account.md) collection| Collection of accounts of the identity in different identity providers. Inherited from [microsoft.graph.security.identityAccounts](../resources/security-identityaccounts.md). |
|cloudSecurityIdentifier|String| The cloud security identifier of the identity account. Inherited from [microsoft.graph.security.identityAccounts](../resources/security-identityaccounts.md).                  |
|displayName|String| The display name of the identity account. Inherited from [microsoft.graph.security.identityAccounts](../resources/security-identityaccounts.md).                               |
|domain|String| The domain name of the identity account. Inherited from [microsoft.graph.security.identityAccounts](../resources/security-identityaccounts.md).                                |
|emailAddress|String| Email address of the user.                                                                                                                                                     |
|id|String| Unique identifier to represent the identity account. Inherited from [microsoft.graph.entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)           |
|isEnabled|Boolean| Boolean indicating if the identity account is enabled. Inherited from [microsoft.graph.security.identityAccounts](../resources/security-identityaccounts.md).                  |
|onPremisesSecurityIdentifier|String| The on-premises security identifier of the identity account. Inherited from [microsoft.graph.security.identityAccounts](../resources/security-identityaccounts.md).            |
|userPrincipalName|String| The user principal name.                                                                                                                                                       |


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.user",
  "baseType": "microsoft.graph.security.identityAccounts",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.user",
  "id": "String (identifier)",
  "displayName": "String",
  "domain": "String",
  "onPremisesSecurityIdentifier": "String",
  "cloudSecurityIdentifier": "String",
  "isEnabled": "Boolean",
  "accounts": [
    {
      "@odata.type": "microsoft.graph.security.account"
    }
  ],
  "emailAddress": "String",
  "userPrincipalName": "String"
}
```
