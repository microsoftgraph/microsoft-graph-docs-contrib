---
title: "userCloudLicensing resource type"
description: "Represents the relationships of a user to cloud licensing resources."
author: "patrick-starrin"
ms.date: 07/18/2025
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: resourcePageType
---

# userCloudLicensing resource type

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the relationships of a [user](../resources/user.md) to cloud licensing resources.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignmentErrors|[microsoft.graph.cloudLicensing.assignmentError](../resources/cloudlicensing-assignmenterror.md) collection|The list of assignment errors that currently affect this user.|
|assignments|[microsoft.graph.cloudLicensing.assignment](../resources/cloudlicensing-assignment.md) collection|The list of assignments that are directly assigned to this user.|
|usageRights|[microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md) collection|The rights of the user to use various services, granted by the combination of their assigned licenses.|
|waitingMembers|[microsoft.graph.cloudLicensing.waitingMember](../resources/cloudlicensing-waitingmember.md) collection|List of over-assigned users who are in the waiting room for an allotment due to license capacity limits.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudLicensing.userCloudLicensing"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudLicensing.userCloudLicensing"
}
```

