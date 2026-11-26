---
title: "deviceAndAppManagementRingActivationDurationCriteria resource type"
description: "Specifies an activation delay for a deployment plan ring template relative to the preceding ring."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceAndAppManagementRingActivationDurationCriteria resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Specifies an activation delay, expressed as an ISO 8601 duration, for a deployment plan ring template relative to the preceding ring.

Use this type only for the **activationCriteria** property of a [deviceAndAppManagementDeploymentRingTemplate](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentringtemplate.md) in a [deviceAndAppManagementDeploymentPlan](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentplan.md). The first ring must have a zero duration relative to the deployment start time. Each subsequent ring must specify a delay of at least one hour relative to the preceding ring's activation time.

When creating a deployment from a plan, the caller must convert each duration to an absolute UTC date and time and use [deviceAndAppManagementRingActivationDateTimeCriteria](../resources/intune-gntgraphservice-deviceandappmanagementringactivationdatetimecriteria.md) for the deployment ring. Specifying a deployment plan ID doesn't automatically populate the deployment's rings.

Inherits from [deviceAndAppManagementRingActivationCriteria](../resources/intune-gntgraphservice-deviceandappmanagementringactivationcriteria.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|duration|Duration|The activation delay in ISO 8601 duration format. Required. Must be `P0D` for the first ring and at least `PT1H` for subsequent rings. For example, `P3D` specifies a delay of three days relative to the preceding ring's activation time.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceAndAppManagementRingActivationDurationCriteria"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementRingActivationDurationCriteria",
  "duration": "String (duration)"
}
```