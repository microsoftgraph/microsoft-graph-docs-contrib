---
title: "delegatedAdminRelationshipCustomerParticipant resource type"
description: "Represents identification details of a customer in a delegated admin relationship."
author: "koravva"
ms.localizationpriority: medium
ms.prod: "customer-relationship-management"
doc_type: resourcePageType
---

# delegatedAdminRelationshipCustomerParticipant resource type

Namespace: microsoft.graph

Represents identification details of a customer in a delegated admin relationship.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the customer tenant as set by Azure AD. Read-only|
|tenantId|String|The Azure AD-assigned tenant ID of the customer tenant.|

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
  "tenantId": "String",
  "displayName": "String"
}
```

