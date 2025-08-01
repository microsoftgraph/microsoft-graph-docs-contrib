---
title: "accessPackageNotificationSettings resource type"
description: "The accessPackageNotificationSettings type, used for the accessPackageNotificationSettings property of an access package assignment policy, provides details on if access package assignment emails are disabled for an access package assignment policy."
author: "markwahl-msft"
ms.date: 03/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# notificationSettings resource type

Namespace: microsoft.graph

Used for the **accessPackageNotificationSettings** property of an [access package assignment policy](accesspackageassignmentpolicy.md). Provides details on if access package assignment email notifications are disabled within the specified access package assignment policy.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isAssignmentNotificationDisabled|Boolean|Indicates if notification emails for an access package are disabled within an access package assignment policy.|

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
