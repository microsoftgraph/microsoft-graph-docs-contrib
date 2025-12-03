---
title: "workloadStatus resource type"
description: "Represent the status for a workload."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# workloadStatus resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent the status for a workload.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name for the workload. Required. Read-only.|
|offboardedDateTime|DateTimeOffset|The date and time the workload was offboarded. Optional. Read-only.|
|onboardedDateTime|DateTimeOffset|The date and time the workload was onboarded. Optional. Read-only.|
|onboardingStatus|workloadOnboardingStatus|The onboarding status for the workload. The possible values are: `notOnboarded`, `onboarded`, `unknownFutureValue`. Optional. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedTenants.workloadStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.workloadStatus",
  "onboardingStatus": "String",
  "onboardedDateTime": "String (timestamp)",
  "displayName": "String",
  "offboardedDateTime": "String (timestamp)"
}
```
