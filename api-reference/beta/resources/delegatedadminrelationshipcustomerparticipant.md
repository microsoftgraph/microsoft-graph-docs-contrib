---
title: "delegatedAdminRelationshipCustomerParticipant resource type"
description: "Contains details of a customer participant in a delegated admin relationship."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# delegatedAdminRelationshipCustomerParticipant resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains details of a customer participant in a delegated admin relationship.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the customer organization. This is set by the system and cannot be set by the caller.|
|tenantId|String|The tenant ID of the customer participant in the relationship. Must be a valid tenant ID as in Azure Active Directory.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.delegatedAdminRelationshipCustomerParticipant"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.delegatedAdminRelationshipCustomerParticipant",
  "tenantId": "4fdbff88-9d6b-42e0-9713-45c922ba8001",
  "displayName": "Contoso"
}
```

