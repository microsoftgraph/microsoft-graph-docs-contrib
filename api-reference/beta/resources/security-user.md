---
title: "user resource type (account in Microsoft Defender for Identity)"
description: "User fields"
author: "SamuelBenichou"
ms.date: 06/22/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# user resource type (account in Microsoft Defender for Identity)

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details of a user identity account.

Inherits from [microsoft.graph.security.identityAccounts](../resources/security-identityaccounts.md).

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
