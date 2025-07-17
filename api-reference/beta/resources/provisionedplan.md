---
title: "provisionedPlan resource type"
description: "The provisionedPlans property of the user entity and the organization entity is a collection of provisionedPlan objects."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-directory-management"
author: "suawat"
ms.date: 10/22/2024
---

# provisionedPlan resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used by the **provisionedPlans** property of the [user](user.md) entity and the [organization](organization.md) entity.


## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|capabilityStatus|String|Condition of the capability assignment. The possible values are `Enabled`, `Warning`, `Suspended`, `Deleted`, `LockedOut`. See [a detailed description of each value](../resources/assignedplan.md#capabilitystatus-values).|
|provisioningStatus|String|The possible values are:<br/>`Success` - Service is fully provisioned.<br/>`Disabled` - Service is disabled.<br/>`Error` - The service plan isn't provisioned and is in an error state.<br/>`PendingInput` - The service isn't provisioned and is awaiting service confirmation.<br/>`PendingActivation` - The service is provisioned but requires explicit activation by an administrator (for example, Intune_O365 service plan)<br/>`PendingProvisioning` - Microsoft has added a new service to the product SKU and it isn't activated in the tenant.|
|service|String|The name of the service; for example, "AccessControlS2S"|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.provisionedPlan"
}-->

```json
{
  "capabilityStatus": "string",
  "provisioningStatus": "string",
  "service": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "provisionedPlan resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


