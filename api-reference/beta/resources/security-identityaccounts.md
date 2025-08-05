---
title: "identityAccounts resource type"
description: "Refers to any user or service account that is monitored for suspicious or malicious activity by Microsoft Defender for Identity within your identity infrastructure."
author: "SamuelBenichou"
ms.date: 06/22/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# identityAccounts resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Refers to any user or service account that is monitored for suspicious or malicious activity by Microsoft Defender for Identity within your identity infrastructure.

This resource is an abstract type from which the [microsoft.graph.security.user](../resources/security-user.md) is derived.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type| Description                                                         |
|:---|:---|:--------------------------------------------------------------------|
|[List](../api/security-identitycontainer-list-identityaccounts.md)|[microsoft.graph.security.identityAccounts](../resources/security-identityaccounts.md) collection| Get a list of the identity account objects and their properties.    |
|[Get](../api/security-identityaccounts-get.md)|[microsoft.graph.security.identityAccounts](../resources/security-identityaccounts.md)| Read the properties and relationships of a identity account object. |
|[invokeAction](../api/security-identityaccounts-invokeaction.md)|[microsoft.graph.security.invokeActionResult](../resources/security-invokeactionresult.md)| Invoke an action for the account.                                   |

## Properties
|Property|Type| Description                                                                                                                                                          |
|:---|:---|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|accounts|[microsoft.graph.security.account](../resources/security-account.md) collection| Collection of accounts of the identity in different identity providers.                                                                                              |
|cloudSecurityIdentifier|String| The cloud security identifier of the identityAccount.                                                                                                                |
|displayName|String| The  Active Directory display name of the identityAccount.                                                                                                                             |
|domain|String| The Active Directory domain name of the identityAccount.                                                                                                                              |
|id|String| Unique identifier to represent the identity account. Inherited from [microsoft.graph.entity](../resources/entity.md). Inherits from [entity](../resources/entity.md) |
|isEnabled|Boolean| Boolean indicating if the identityAccounts is enabled.                                                                                                               |
|onPremisesSecurityIdentifier|String| The on-premises security identifier of the identityAccount.                                                                                                          |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.identityAccounts",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.identityAccounts",
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
  ]
}
```
