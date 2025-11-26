---
title: "onlineMeetingSensitivityLabelAssignment resource type"
description: "Contains information about the sensitivity label applied to the Teams meeting in Microsoft Graph."
author: garchiro7
ms.date: 12/08/2025
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# onlineMeetingSensitivityLabelAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about the sensitivity label applied to the Teams meeting in Microsoft Graph. This object corresponds to the label that is created and managed by admins in Microsoft Purview and is used to enforce data protection and meeting governance.

For more information, see [Teams meetings with protection for sensitive data.](/microsoftteams/configure-meetings-sensitive-protection).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|sensitivityLabelId|String|Id of the sensitivity label that is applied to the Teams meeting. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onlineMeetingSensitivityLabelAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onlineMeetingSensitivityLabelAssignment",
  "sensitivityLabelId": "String"
}
```

