---
title: "CloudPcProvisioningPolicyAutopatch resource type"
description: "Represents specific settings for Autopatch which enables Autopatch customers to get Autopatch experience for Cloud PC."
author: "ChyouChyou"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcProvisioningPolicyAutopatch resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents specific settings for Autopatch which enables Autopatch customers to get Autopatch experience for Cloud PC.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|autopatchGroupId|String|The unique identifier(ID) of Autopatch groups serve as logical containers or units that group several Microsoft Entra groups and software update policies. The devices with same Autopatch group ID share unified software update management. The default value is `null`, which indicates that no Autopatch group is associated with the provisioning policy.|

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
  "autopatchGroupId": "9f06f7fc-db3b-499b-a9c8-6498dc92ef92"
}
```
