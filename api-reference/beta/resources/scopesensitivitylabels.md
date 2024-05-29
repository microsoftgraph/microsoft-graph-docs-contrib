---
title: "scopeSensitivityLabels resource type"
description: "Defines the sensitivity labels for groups that are included in a permissionGrantPreApprovalPolicy, or included or excluded in a permissionGrantPolicy."
author: "yuhko-msft"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# scopeSensitivityLabels resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the sensitivity labels for groups that are included in a [permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md), or included or excluded in a [permission grant policy](permissiongrantpolicy.md). Since **chat** resources don't support sensitivity labels, use `all` when the **scopeType** of [preApprovalDetail](../resources/preapprovaldetail.md) is `chat`. For more information about sensitivity labels, see [sensitivity labels](/microsoft-365/compliance/sensitivity-labels).

This resource is an abstract base type from which the following types are derived:
* [allscopesensitivitylabels](allscopesensitivitylabels.md) indicates all sensitivity labels are preapproved
* [enumeratedscopesensitivitylabels](enumeratedscopesensitivitylabels.md) indicates that only the specified sensitivity labels are preapproved

## Properties
|Property|Type|Description|
|:---|:---|:---|
|labelKind|String|Indicates the kind of sensitivity label that is included. Possible values: `all` means all sensitivity labels are allowed, or `enumerated` means a selected set of sensitivity labels from a single resource application are allowed. Required.|


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.scopeSensitivityLabels"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.scopeSensitivityLabels",
  "labelKind": "String"
}
```
