---
title: "user resource type (Global Secure Access user)"
description: "Unique Microsoft Entra ID user identified by the Global Secure Access servics."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: resourcePageType
---

# user resource type (Global Secure Access user)

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Unique Microsoft Entra ID user identified by the Global Secure Access services.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|User display Name.|
|lastAccessDateTime|DateTimeOffset|The date and time of the most recent access.|
|trafficType|microsoft.graph.networkaccess.trafficType|The traffic classification. The possible values are `internet`, `private`, `microsoft365`, and `all`.|
|userId|String|The ID for the user.|
|userPrincipalName|String|A unique identifier that is associated with a user in a system or directory. Typically, this value is an email address that is used for user authentication and identification.|
|userType|microsoft.graph.networkaccess.userType|The user type. The possible values are `member`, `guest`, and `unknownFutureValue`.|

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

