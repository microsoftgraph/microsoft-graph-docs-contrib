---
title: "deviceAndAppManagementRingActivationCriteria resource type"
description: "Represents the abstract base type for deployment ring activation criteria."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceAndAppManagementRingActivationCriteria resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the abstract base type for criteria that determine when a deployment ring becomes eligible for activation.

This type can't be instantiated directly. Use one of the following derived types, identified by its `@odata.type` value:

- [deviceAndAppManagementRingActivationDateTimeCriteria](../resources/intune-gntgraphservice-deviceandappmanagementringactivationdatetimecriteria.md) specifies an absolute UTC activation time for the **activationCriteria** property of a [deviceAndAppManagementDeploymentRing](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentring.md).
- [deviceAndAppManagementRingActivationDurationCriteria](../resources/intune-gntgraphservice-deviceandappmanagementringactivationdurationcriteria.md) specifies a relative activation delay for the **activationCriteria** property of a [deviceAndAppManagementDeploymentRingTemplate](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentringtemplate.md).

## Methods

None.

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceAndAppManagementRingActivationCriteria"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementRingActivationCriteria"
}
```