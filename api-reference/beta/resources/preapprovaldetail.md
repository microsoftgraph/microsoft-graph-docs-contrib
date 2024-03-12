---
title: "preApprovalDetail resource type"
description: "A preApprovalDetail describes a list of conditions under which an app can be preapproved for consent."
author: "yuhko-msft"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# preApprovalDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A preApprovalDetail describes a list of conditions under which the app has been preapproved for consent. The conditions include permissions, resource scope type, and sensitivity labels that have been tagged for the resource scope.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|permissions|[preApprovedPermissions](../resources/preapprovedpermissions.md)|Specifies the permissions being preapproved for consent. Required.|
|scopeType|resourceScopeType| The resource type the preapproval applies to. Possible values: `group` for [groups](../resources/group.md) and [teams](../resources/team.md), or `chat` for [chats](../resources/chat.md). Required.|
|sensitivityLabels|[scopeSensitivityLabels](../resources/scopesensitivitylabels.md)|Conditions on the [sensitivity labels](/microsoftteams/sensitivity-labels) of the target resource scope the preapproval applies to. Required.



## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.preApprovalDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.preApprovalDetail",
  "scopeType": "String",
  "sensitivityLabels": {
    "@odata.type": "microsoft.graph.scopeSensitivityLabels"
  },
  "permissions": {
    "@odata.type": "microsoft.graph.preApprovedPermissions"
  }
}
```
