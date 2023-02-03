---
title: "servicePlanInfo resource type"
description: "Contains information about a service plan associated with a subscribed SKU. The **servicePlans** property of the subscribedSku entity is a collection of **servicePlanInfo**."
ms.localizationpriority: medium
author: "jconley76"
ms.prod: "directory-management"
doc_type: resourcePageType
---

# servicePlanInfo resource type

Namespace: microsoft.graph

Contains information about a service plan associated with a subscribed SKU. The **servicePlans** property of the [subscribedSku](subscribedsku.md) entity is a collection of **servicePlanInfo**.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|appliesTo|String|The object the service plan can be assigned to. The possible values are:<br/>`User` - service plan can be assigned to individual users.<br/>`Company` - service plan can be assigned to the entire tenant.|
|provisioningStatus|String|The provisioning status of the service plan. The possible values are:<br/>`Success` - Service is fully provisioned.<br/>`Disabled` - Service has been disabled.<br/>`ErrorStatus` - The service plan has not been provisioned and is in an error state.<br/>`PendingInput` - Service is not yet provisioned; awaiting service confirmation.<br/>`PendingActivation` - Service is provisioned but requires explicit activation by administrator (for example, Intune_O365 service plan)<br/>`PendingProvisioning` - Microsoft has added a new service to the product SKU and it has not been activated in the tenant, yet.|
|servicePlanId|Guid|The unique identifier of the service plan.|
|servicePlanName|String|The name of the service plan.|


## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.servicePlanInfo"
}-->

```json
{
  "appliesTo": "String",
  "provisioningStatus": "String",
  "servicePlanId": "Guid",
  "servicePlanName": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "servicePlanInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

