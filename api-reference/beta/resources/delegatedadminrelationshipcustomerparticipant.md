---
title: "delegatedAdminRelationshipCustomerParticipant resource type"
description: "Represents identification details of a customer in a delegated admin relationship."
author: "koravvams"
ms.localizationpriority: medium
ms.subservice: partner-customer-administration
doc_type: resourcePageType
ms.date: 07/22/2024
---

# delegatedAdminRelationshipCustomerParticipant resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents identification details of a customer in a [delegated admin relationship](../resources/delegatedadminrelationship.md) and [delegated admin access assignment](../resources/delegatedadminaccessassignment.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the customer tenant as set by Microsoft Entra ID. Read-only|
|tenantId|String|The Microsoft Entra ID-assigned tenant ID of the customer tenant.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
