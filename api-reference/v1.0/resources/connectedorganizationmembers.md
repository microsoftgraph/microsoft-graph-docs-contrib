---
title: "connectedOrganizationMembers resource type"
description: "Represents a collection of users in the tenant who are allowed as requestor, approver, or reviewer."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---
# connectedOrganizationMembers resource type

Namespace: microsoft.graph


Used in the request settings of an access package assignment policy. The `@odata.type` value `#microsoft.graph.connectedOrganizationMembers` indicates that this type identifies a collection of users, those who are associated with a [connected organization](connectedorganization.md), who are allowed to request an access package.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|connectedOrganizationId|String|The ID of the [connected organization](connectedorganization.md) in entitlement management.|
|description|String|The name of the connected organization.|

## Relationships
None.
## JSON representation
The following JSON representation shows the resource type.
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



