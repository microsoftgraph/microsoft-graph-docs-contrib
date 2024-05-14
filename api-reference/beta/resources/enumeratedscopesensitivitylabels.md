---
title: "enumeratedScopeSensitivityLabels resource type"
description: "Specifies that only specific sensitivity labels on a resource app in a permissionGrantPreApprovalPolicy are preapproved for consent. It can also be used to specify a matching rule in a permissiongrantconditionset in a permissiongrantpolicy to include or exclude a permission grant event."
author: "yuhko-msft"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# enumeratedScopeSensitivityLabels resource type

Namespace: microsoft.graph.enumeratedScopeSensitivityLabels

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies that only specific sensitivity labels on a resource app in a [permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) are preapproved for consent. It can also be used to specify condition sets that are included or excluded in a [permission grant policy](permissiongrantpolicy.md). If the client application requests access to more resource scopes after the policy is created, the policy will still apply.

Inherits from [scopeSensitivityLabels](../resources/scopesensitivitylabels.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|labelKind|labelKind|Indicates the kind of sensitivity label that is included. Only `enumerated` is supported to indicate that a selected set of sensitivity labels from a single resource application is allowed. Required.|
|sensitivityLabels|String collection|The sensitivity labels that are applicable to the scope type and have been preapproved. Required. |

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
