---
title: "auditUserIdentity resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# auditUserIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [userIdentity](../resources/useridentity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The user's display name. Inherited from [identity](../resources/identity.md).|
|homeTenantId|String|For user sign ins, the ID of the tenant that the user is a member of.|
|homeTenantName|String|For user sign ins, the ID of the tenant that the user is a member of. Only populated in cases where Azure AD has recorded affirmative consent from the home tenant to show tenant content.|
|id|String|The user's unique ID. Inherited from [identity](../resources/identity.md).|
|ipAddress|String|The IP address Azure AD detected for the user's client. Inherited from [userIdentity](../resources/useridentity.md).|
|userPrincipalName|String|The user's User Principal Name (UPN). Inherited from [userIdentity](../resources/useridentity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.auditUserIdentity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.auditUserIdentity",
  "displayName": "String",
  "id": "String (identifier)",
  "ipAddress": "String",
  "userPrincipalName": "String",
  "homeTenantId": "String",
  "homeTenantName": "String"
}
```

