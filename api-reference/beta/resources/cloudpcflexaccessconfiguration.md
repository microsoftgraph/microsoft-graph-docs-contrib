---
title: "cloudPcFlexAccessConfiguration resource type"
description: "Represents the current access configuration of a Windows 365 Flex (formerly Windows 365 Frontline) Cloud PC."
author: "chikaishiro"
ms.date: 11/11/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcFlexAccessConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the current access configuration of a Windows 365 Flex (formerly Windows 365 Frontline) [Cloud PC](../resources/cloudpc.md). The [retrieveFlexCloudPcAccessConfiguration](../api/cloudpc-retrieveflexcloudpcaccessconfiguration.md) function on the [cloudPC](../resources/cloudpc.md) resource returns this type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessState|[cloudPcFlexAccessState](#cloudpcflexaccessstate-values)|The current access state of the Flex Cloud PC. The possible values are: `unassigned`, `activationFailed`, `active`, `activating`, `standbyMode`, `unknownFutureValue`. The `/me` endpoint resolves the state for the signed-in user; the administrative endpoint returns the runtime state of the device. Read-only.|

### cloudPcFlexAccessState values

|Member|Description|
|:---|:---|
|unassigned|The Cloud PC isn't currently assigned.|
|activationFailed|Activation of the Cloud PC failed.|
|active|The Cloud PC is active and ready to connect.|
|activating|The Cloud PC is in the activation process.|
|standbyMode|The Cloud PC is in standby mode and remains accessible.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcFlexAccessConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcFlexAccessConfiguration",
  "accessState": "String"
}
```
