---
title: "subscription resource type"
description: "Represents a subscription that supports an allotment."
author: "patrick-starrin"
ms.date: 07/18/2025
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: resourcePageType
---

# subscription resource type

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a subscription that supports an [allotment](../resources/cloudlicensing-allotment.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|nextLifecycleDate|Date|The date on which the current state transitions to the next state.|
|startDate|Date|The date when the subscription started.|
|state|[microsoft.graph.cloudLicensing.subscriptionState](#subscriptionstate-values) | The current lifecycle state of the subscription. The possible values are: `active`, `warning`, `suspended`, `lockedOut`, `deleted`, `unknownFutureValue`. This property is a multi-valued enumeration and the property can contain multiple values in a comma-separated list. Read-only.|
|subscriptionId|String|Identifier for the **subscription** object.|
|tags|[microsoft.graph.cloudLicensing.subscriptionTags](#subscriptiontags-values) | A set of flags that provide additional information about the subscription. The possible values are: `none`, `trial`, `unknownFutureValue`. This property is a multi-valued enumeration and the property can contain multiple values in a comma-separated list. Read-only.|

### subscriptionState values

| Member            | Description                                                            |
|:------------------|:-----------------------------------------------------------------------|
| active              | The allotment is backed by an active, in-date subscription.                  |
| warning              | The allotment is backed by a subscription that expired but is still within the grace period.            |
| suspended             | The allotment is backed by a subscription that expired, isn't within the grace period, and is suspended. Licenses assigned from this allotment no longer provide benefits.                    |
| lockedOut            | The allotment is backed by a subscription that is in a locked-out or deprovisioned state. Licenses assigned from this allotment no longer provide benefits.          |
| deleted           | The allotment and its backing subscription are deleted. Licenses assigned from this allotment no longer exist or provide benefits. |
| unknownFutureValue| Evolvable enumeration sentinel value. Don't use.                       |

### subscriptionTags values

| Member            | Description                                                            |
|:------------------|:-----------------------------------------------------------------------|
| none              | Indicates that no flags are enabled.                  |
| trial              | Indicates that the licenses in this allotment are backed by a trial subscription.            |
| unknownFutureValue| Evolvable enumeration sentinel value. Don't use.                       |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudLicensing.subscription",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudLicensing.subscription",
  "nextLifecycleDate": "String (date)",
  "startDate": "String (date)",
  "state": "String",
  "subscriptionId": "String",
  "tags": "String"
}
```
