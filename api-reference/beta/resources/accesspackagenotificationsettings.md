---
title: "accessPackageNotificationSettings resource type"
description: "**TODO: Add Description**"
author: "markwahl-msft"
ms.date: 03/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessPackageNotificationSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for the **notificationSettings** property of an [access package assignment policy](accesspackageassignmentpolicy.md). Provides details on if access package assignment email notifications are disabled within the specified policy.  

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isAssignmentNotificationDisabled|Boolean|A property that represents if notification emails for an access package are disabled within a policy.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageNotificationSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageNotificationSettings",
  "isAssignmentNotificationDisabled": "Boolean"
}
```

