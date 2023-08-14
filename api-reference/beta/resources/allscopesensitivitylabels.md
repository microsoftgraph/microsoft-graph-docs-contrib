---
title: "allScopeSensitivityLabels resource type"
description: "Specifies that sensitivity labels from any resource app in a permissionGrantPreApprovalPolicy are pre-approved for consent."
author: "yuhko-msft"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# allScopeSensitivityLabels resource type

Namespace: microsoft.graph.allScopeSensitivityLabels

Specifies that sensitivity labels from any resource app in a [permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) are pre-approved for consent. If the client application requests access to more resource scopes after the policy is created, the policy will still apply.

Inherits from [scopeSensitivityLabels](../resources/scopesensitivitylabels.md).

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Properties
|Property|Type|Description|
|:---|:---|:---|
|labelKind|labelKind|Inherited from [scopeSensitivityLabels](../resources/scopesensitivitylabels.md). Indicates the scope of sensitivity labels that are included in this condition set. Possible values: `all` for all sensitivity labels, or `enumerated` for a given list of sensitivity labels. Only `all` is supported for the **allScopeSensitivityLabels** object type. Required.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.allScopeSensitivityLabels"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.allScopeSensitivityLabels",
  "labelKind": "String"
}
```
