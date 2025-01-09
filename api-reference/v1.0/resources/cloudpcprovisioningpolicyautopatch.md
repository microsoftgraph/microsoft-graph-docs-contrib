---
title: "cloudPcProvisioningPolicyAutopatch resource type"
description: "Indicates the Autopatch settings for Cloud PCs using this provisioning policy."
author: "ChyouChyou"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcProvisioningPolicyAutopatch resource type

Namespace: microsoft.graph

Indicates the Autopatch settings for Cloud PCs using this provisioning policy.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|autopatchGroupId|String|Specifies the ID of an Autopatch group to associate with this provisioning policy. Autopatch groups can be assigned software update policies. They serve as logical containers that can hold several Microsoft Entra groups. The default value is null which indicates that no Autopatch group is associated with the provisioning policy.|

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