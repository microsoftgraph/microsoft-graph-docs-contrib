---
title: "auditUserIdentity resource type"
description: "An open type that represents details of the identity of a user along with information about their home tenant."
author: "besiler"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# auditUserIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An open type that represents details of the identity of a user along with information about their home tenant.

Inherits from [userIdentity](../resources/useridentity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The user's display name. Inherited from [identity](../resources/identity.md).|
|homeTenantId|String|For user sign ins, the identifier of the tenant that the user is a member of.|
|homeTenantName|String|For user sign ins, the name of the tenant that the user is a member of. Only populated in cases where the home tenant has provided affirmative consent to Azure AD to show the tenant content.|
|id|String|The user's unique identifier. Inherited from [identity](../resources/identity.md).|
|ipAddress|String|The IP address Azure AD detected for the user's client. Inherited from [userIdentity](../resources/useridentity.md).|
|userPrincipalName|String|The user's User Principal Name (UPN). Inherited from [userIdentity](../resources/useridentity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.auditUserIdentity",
  "baseType": "microsoft.graph.userIdentity",
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

