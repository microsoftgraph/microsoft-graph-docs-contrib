---
title: "delegatedAdminRelationshipParticipant resource type"
description: "Contains details of a participant in a delegated admin relationship."
author: "amharris1331"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# delegatedAdminRelationshipParticipant resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains details of a participant in a delegated admin relationship.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|tenantId|String|The tenant ID of the participant in the relationship. Must be a valid tenant ID as in AAD.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.delegatedAdminRelationshipParticipant"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.delegatedAdminRelationshipParticipant",
  "tenantId": "String"
}
```

