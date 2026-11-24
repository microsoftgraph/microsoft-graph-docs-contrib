---
title: "cloudPcFlexConfigurationDetail resource type"
description: "Represents Windows 365 Flex-specific (formerly Windows 365 Frontline) configuration details for a Cloud PC, including license availability."
author: "chikaishiro"
ms.date: 11/11/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcFlexConfigurationDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents Windows 365 Flex-specific (formerly Windows 365 Frontline) configuration details for a [Cloud PC](../resources/cloudpc.md), including license availability. The [retrieveFlexCloudPcConfigurationDetail](../api/cloudpc-retrieveflexcloudpcconfigurationdetail.md) function on the [cloudPC](../resources/cloudpc.md) resource returns this type.

License availability is determined by the service plan and concurrent-access group of the Cloud PC. It doesn't describe the power state of the Cloud PC.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|flexCloudPcAvailability|[cloudPcFlexAvailabilityStatus](#cloudpcflexavailabilitystatus-values)|Whether a Flex license is currently available in the service plan and concurrent-access group of the Cloud PC. The possible values are: `notApplicable`, `available`, `notAvailable`, `unknownFutureValue`. Read-only.|

### cloudPcFlexAvailabilityStatus values

|Member|Description|
|:---|:---|
|notApplicable|Flex license availability doesn't apply to this Cloud PC.|
|available|A Flex license is currently available in the service plan and concurrent-access group of the Cloud PC.|
|notAvailable|No Flex license is currently available in the service plan and concurrent-access group of the Cloud PC.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcFlexConfigurationDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcFlexConfigurationDetail",
  "flexCloudPcAvailability": "String"
}
```
