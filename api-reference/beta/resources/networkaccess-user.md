---
title: "Global Secure Access user resource type"
description: "Unique Microsoft Entra ID user identified by Global Secure Access."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# Global Secure Access user resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Unique Microsoft Entra ID user identified by Global Secure Access.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|User display Name.|
|lastAccessDateTime|DateTimeOffset|last Access DateTime.|
|trafficType|microsoft.graph.networkaccess.trafficType|traffic classification..The possible values are: `internet`, `private`, `microsoft365`, `all`.|
|userId|String|Unique Id.|
|userPrincipalName|String|unique identifier associated with a user in a system or directory, typically in the form of an email address, used for user authentication and identification.|
|userType|microsoft.graph.networkaccess.userType|user Type.The possible values are: `member`, `guest`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.user"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.user",
  "displayName": "String",
  "userPrincipalName": "String",
  "userId": "String",
  "userType": "String",
  "trafficType": "String",
  "lastAccessDateTime": "String (timestamp)"
}
```

