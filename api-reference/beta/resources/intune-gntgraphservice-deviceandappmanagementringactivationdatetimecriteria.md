---
title: "deviceAndAppManagementRingActivationDateTimeCriteria resource type"
description: "Specifies the UTC date and time at which a deployment ring becomes eligible for activation."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceAndAppManagementRingActivationDateTimeCriteria resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Specifies the UTC date and time at which a deployment ring becomes eligible for activation.

Use this type only for the **activationCriteria** property of a [deviceAndAppManagementDeploymentRing](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentring.md). A ring is evaluated for activation only after the preceding ring has activated.

Inherits from [deviceAndAppManagementRingActivationCriteria](../resources/intune-gntgraphservice-deviceandappmanagementringactivationcriteria.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|The UTC date and time at which the ring becomes eligible for activation. Required. Uses ISO 8601 format, for example, `2026-11-05T08:00:00Z`.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceAndAppManagementRingActivationDateTimeCriteria"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementRingActivationDateTimeCriteria",
  "startDateTime": "String (timestamp)"
}
```