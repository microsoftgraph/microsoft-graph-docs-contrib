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
|displayName|String|**TODO: Add Description** Inherited from [identity](../resources/identity.md).|
|homeTenantId|String|**TODO: Add Description**|
|homeTenantName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [identity](../resources/identity.md).|
|ipAddress|String|**TODO: Add Description** Inherited from [userIdentity](../resources/useridentity.md).|
|userPrincipalName|String|**TODO: Add Description** Inherited from [userIdentity](../resources/useridentity.md).|

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

