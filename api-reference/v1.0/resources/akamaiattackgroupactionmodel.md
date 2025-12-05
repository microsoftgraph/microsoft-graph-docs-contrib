---
title: "akamaiAttackGroupActionModel resource type"
description: "Represents an Akamai WAF attack group and the action applied to that group. Used to describe how specific categories of attacks are handled by the Akamai integration, such as blocking or alerting."
author: "more-rasika"
ms.date: 10/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# akamaiAttackGroupActionModel resource type

Namespace: microsoft.graph



Represents an Akamai web application firewall (WAF) attack group and the action configured for that group, as defined in the **activeAttackGroups** property of the [akamaiVerifiedDetailsModel object](../resources/akamaiverifieddetailsmodel.md). This resource is used to describe how the Akamai integration handles specific categories of attacks, such as blocking, alerting, or logging.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|String|The action Akamai applies to the attack group when a matching threat is detected. Common values include `deny`, `none` or `alert`.|
|group|String|The name or identifier of the attack group. This value categorizes the type of attack the action applies to.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.akamaiAttackGroupActionModel"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.akamaiAttackGroupActionModel",
  "group": "String",
  "action": "String"
}
```