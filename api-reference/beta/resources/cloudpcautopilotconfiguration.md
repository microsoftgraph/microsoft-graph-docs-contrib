---
title: "cloudPcAutopilotConfiguration resource type"
description: "Represents specific settings for Windows Autopilot that enable Windows 365 customers to experience it on Cloud PC."
author: "ChyouChyou"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcAutopilotConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents specific settings for Windows Autopilot that enable Windows 365 customers to experience it on Cloud PC.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|devicePreparationProfileId|String|The unique identifier (ID) of a Windows Autopatch group. An Autopatch group is a logical container or unit that groups several Microsoft Entra groups and software update policies. Devices with the same Autopatch group ID share unified software update management. The default value is `null` that indicates that no Autopatch group is associated with the provisioning policy.|
|applicationTimeoutInMinutes|Int32|The unique identifier (ID) of a Windows Autopatch group. An Autopatch group is a logical container or unit that groups several Microsoft Entra groups and software update policies. Devices with the same Autopatch group ID share unified software update management. The default value is `null` that indicates that no Autopatch group is associated with the provisioning policy.|
|onFailureDeviceAccessDenied|Boolean|The unique identifier (ID) of a Windows Autopatch group. An Autopatch group is a logical container or unit that groups several Microsoft Entra groups and software update policies. Devices with the same Autopatch group ID share unified software update management. The default value is `null` that indicates that no Autopatch group is associated with the provisioning policy.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcAutopilot"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcAutopilot",
  "autopatchGroupId": "String (identifier)"
}
```
