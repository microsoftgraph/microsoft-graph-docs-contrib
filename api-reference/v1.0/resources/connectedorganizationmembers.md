---
title: "connectedOrganizationMembers complex type"
description: "The connectedOrganizationMembers type identifies a collection of users in the tenant who will be allowed as requestor, approver or reviewer."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---
# connectedOrganizationMembers complex type

Namespace: microsoft.graph


Used in the request settings of an access package assignment policy. The `@odata.type` value `#microsoft.graph.connectedOrganizationMembers` indicates that this type identifies a collection of users, those who are associated with a [connected organization](connectedorganization.md), who will be allowed to request an access package.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|connectedOrganizationId|String|The ID of the [connected organization](connectedorganization.md) in entitlement management.|
|description|String|The name of the connected organization.|

## Relationships
None.
## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.connectedOrganizationMembers",
  "baseType": "microsoft.graph.subjectSet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.connectedOrganizationMembers",
  "connectedOrganizationId": "String",
  "description": "String"
}
```



