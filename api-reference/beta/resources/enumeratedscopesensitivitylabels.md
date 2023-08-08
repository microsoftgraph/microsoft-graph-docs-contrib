---
title: "enumeratedScopeSensitivityLabels resource type"
description: "Specifies that only specific sensitivity labels on a resource app in a permissionGrantPreApprovalPolicy are pre-approved for consent."
author: "yuhko-msft"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# enumeratedScopeSensitivityLabels resource type

Namespace: microsoft.graph.enumeratedScopeSensitivityLabels

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies that only specific sensitivity labels on a resource app in a [permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) are pre-approved for consent. If the client application requests access to more resource scopes after the policy is created, the policy will still apply.

Inherits from [scopeSensitivityLabels](../resources/scopesensitivitylabels.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|labelKind|labelKind|Indicates the kind of sensitivity label that is included. Only `enumerated` is supported to indicate that a selected set of sensitivity labels from a single resource application is allowed. Required.|
|sensitivityLabels|String collection|The sensitivity labels that are applicable to the scope type and have been pre-approved. Required. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.enumeratedScopeSensitivityLabels"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.enumeratedScopeSensitivityLabels",
  "labelKind": "String",
  "sensitivityLabels": [
    "String"
  ]
}
```
