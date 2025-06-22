---
title: "identityAccounts resource type"
description: "An identity accounts interacts with the identity infrastructure"
author: "SamuelBenichou"
ms.date: 06/22/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# identityAccounts resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Refers to any user or service account that is monitored for suspicious or malicious activity within your identity infrastructure.
This is an abstract type.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-identitycontainer-list-identityaccounts.md)|[microsoft.graph.security.identityAccounts](../resources/security-identityaccounts.md) collection|Get a list of the identityAccounts objects and their properties.|
|[Create](../api/security-identitycontainer-post-identityaccounts.md)|[microsoft.graph.security.identityAccounts](../resources/security-identityaccounts.md)|Create a new identityAccounts object.|
|[Get](../api/security-identityaccounts-get.md)|[microsoft.graph.security.identityAccounts](../resources/security-identityaccounts.md)|Read the properties and relationships of a identityAccounts object.|
|[Update](../api/security-identityaccounts-update.md)|[microsoft.graph.security.identityAccounts](../resources/security-identityaccounts.md)|Update the properties of a identityAccounts object.|
|[Delete](../api/security-identitycontainer-delete-identityaccounts.md)|None|Delete a identityAccounts object.|
|[invokeAction](../api/security-identityaccounts-invokeaction.md)|[microsoft.graph.security.invokeActionResult](../resources/security-invokeactionresult.md)|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accounts|[microsoft.graph.security.account](../resources/security-account.md) collection|**TODO: Add Description**|
|cloudSecurityIdentifier|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|domain|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|isEnabled|Boolean|**TODO: Add Description**|
|onPremisesSecurityIdentifier|String|**TODO: Add Description**|

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
