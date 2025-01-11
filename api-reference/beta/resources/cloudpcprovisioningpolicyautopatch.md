---
title: "cloudPcProvisioningPolicyAutopatch resource type"
description: "Indicates the Windows Autopatch settings for Cloud PCs using this provisioning policy."
author: "ChyouChyou"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 07/25/2024
---

# cloudPcProvisioningPolicyAutopatch resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates the Windows Autopatch settings for Cloud PCs using this provisioning policy.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|autopatchGroupId|String|The unique identifier (ID) of a Windows Autopatch group. An Autopatch group is a logical container or unit that groups several Microsoft Entra groups and software update policies. Devices with the same Autopatch group ID share unified software update management. The default value is `null` that indicates that no Autopatch group is associated with the provisioning policy.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcProvisioningPolicyAutopatch"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcProvisioningPolicyAutopatch",
  "autopatchGroupId": "String (identifier)"
}
```
