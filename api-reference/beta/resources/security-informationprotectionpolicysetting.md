---
title: "informationProtectionPolicySetting resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# informationProtectionPolicySetting resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List informationProtectionPolicySettings](../api/security-informationprotectionpolicysetting-list.md)|[microsoft.graph.security.informationProtectionPolicySetting](../resources/security-informationprotectionpolicysetting.md) collection|Get a list of the [informationProtectionPolicySetting](../resources/security-informationprotectionpolicysetting.md) objects and their properties.|
|[Create informationProtectionPolicySetting](../api/security-informationprotection-post-labelpolicysettings.md)|[microsoft.graph.security.informationProtectionPolicySetting](../resources/security-informationprotectionpolicysetting.md)|Create a new [informationProtectionPolicySetting](../resources/security-informationprotectionpolicysetting.md) object.|
|[Get informationProtectionPolicySetting](../api/security-informationprotectionpolicysetting-get.md)|[microsoft.graph.security.informationProtectionPolicySetting](../resources/security-informationprotectionpolicysetting.md)|Read the properties and relationships of an [informationProtectionPolicySetting](../resources/security-informationprotectionpolicysetting.md) object.|
|[Update informationProtectionPolicySetting](../api/security-informationprotectionpolicysetting-update.md)|[microsoft.graph.security.informationProtectionPolicySetting](../resources/security-informationprotectionpolicysetting.md)|Update the properties of an [informationProtectionPolicySetting](../resources/security-informationprotectionpolicysetting.md) object.|
|[Delete informationProtectionPolicySetting](../api/security-informationprotectionpolicysetting-delete.md)|None|Deletes an [informationProtectionPolicySetting](../resources/security-informationprotectionpolicysetting.md) object.|
|[List sensitivityLabel](../api/security-informationprotectionpolicysetting-list-defaultlabel.md)|[microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md) collection|Get the sensitivityLabel resources from the defaultLabel navigation property.|
|[Add sensitivityLabel](../api/security-informationprotectionpolicysetting-post-defaultlabel.md)|[microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md)|Add defaultLabel by posting to the defaultLabel collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|isDowngradeJustificationRequired|Boolean|**TODO: Add Description**|
|isMandatory|Boolean|**TODO: Add Description**|
|moreInfoUrl|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|defaultLabel|[sensitivityLabel](../resources/security-sensitivitylabel.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.informationProtectionPolicySetting",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.informationProtectionPolicySetting",
  "id": "String (identifier)",
  "isDowngradeJustificationRequired": "Boolean",
  "isMandatory": "Boolean",
  "moreInfoUrl": "String"
}
```

