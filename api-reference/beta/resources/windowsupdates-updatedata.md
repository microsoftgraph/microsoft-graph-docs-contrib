---
title: "updateData resource type"
description: "Provides a read-only entry point for Windows Autopatch device, policy assignment, applicability, and driver reporting data."
author: "arorariya"
ms.date: 09/21/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# updateData resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides a read-only entry point for Windows Autopatch device, policy assignment, applicability, and driver reporting data. Access this resource through the **data** relationship of [adminWindowsUpdates](../resources/adminwindowsupdates.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List applicableCatalogSummaries](../api/windowsupdates-updatedata-list-applicablecatalogsummaries.md)|[microsoft.graph.windowsUpdates.applicableCatalogSummary](../resources/windowsupdates-applicablecatalogsummary.md) collection|List catalog applicability aggregated across Autopatch policies.|
|[List deviceProfiles](../api/windowsupdates-updatedata-list-deviceprofiles.md)|[microsoft.graph.windowsUpdates.deviceProfile](../resources/windowsupdates-deviceprofile.md) collection|List device profile and servicing information.|
|[List drivers](../api/windowsupdates-updatedata-list-drivers.md)|[microsoft.graph.windowsUpdates.driverUpdateReport](../resources/windowsupdates-driverupdatereport.md) collection|List driver updates available in the tenant.|
|[List policyAssignments](../api/windowsupdates-updatedata-list-policyassignments.md)|[microsoft.graph.windowsUpdates.policyAssignment](../resources/windowsupdates-policyassignment.md) collection|List policy-to-device assignments.|

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|applicableCatalogSummaries|[microsoft.graph.windowsUpdates.applicableCatalogSummary](../resources/windowsupdates-applicablecatalogsummary.md) collection|Catalog applicability aggregated across Autopatch policies. Read-only.|
|deviceProfiles|[microsoft.graph.windowsUpdates.deviceProfile](../resources/windowsupdates-deviceprofile.md) collection|Device profile and Windows servicing information. Read-only.|
|drivers|[microsoft.graph.windowsUpdates.driverUpdateReport](../resources/windowsupdates-driverupdatereport.md) collection|Driver updates available in the tenant and their per-device rollout status. Read-only.|
|policyAssignments|[microsoft.graph.windowsUpdates.policyAssignment](../resources/windowsupdates-policyassignment.md) collection|Assignments that associate Autopatch policies with devices. Read-only.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.updateData",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.updateData"
}
```
