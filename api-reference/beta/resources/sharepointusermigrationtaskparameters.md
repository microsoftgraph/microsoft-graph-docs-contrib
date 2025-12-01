---
title: "sharePointUserMigrationTaskParameters resource type"
description: "Represents the parameters necessary to migrate a specific user in a source organization to a target organization."
author: "Joey-King"
ms.date: 11/12/2025
ms.localizationpriority: medium
ms.subservice: "sharepoint"
toc.title: SharePoint user migration task parameters
doc_type: resourcePageType
---

# sharePointUserMigrationTaskParameters resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the parameters necessary to migrate a specific user in a source organization to a target organization. You must specify this resource when you create a new migration task using POST.

Inherits from [sharePointMigrationTaskParameters](../resources/sharepointmigrationtaskparameters.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|preferredLatestStartDateTime|DateTimeOffset|The preferred latest start date and time. The system cancels the **sharePointMigrationTask** if it doesn't start by this time. The value must be greater than the **preferredStartDateTime**, if present. Optional. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationTaskParameters](../resources/sharepointmigrationtaskparameters.md).|
|preferredStartDateTime|DateTimeOffset|The preferred start date and time that allows the **sharePointMigrationTask** to start at a future time instead of as soon as possible (default). Optional. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationTaskParameters](../resources/sharepointmigrationtaskparameters.md).|
|sourceUserIdentity|[userIdentity](../resources/useridentity.md)|The source user in the source tenant, including the user object ID and the user principal name.|
|sourceSiteUrl|String|The SharePoint URL of the source site. Optional. Exactly one of **sourceSiteId** or **sourceUrl** must be specified. If both or neither are specified, it's an error. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationTaskParameters](../resources/sharepointmigrationtaskparameters.md).|
|targetDataLocationCode|String| In Microsoft Entra, this value represents the geographic location (for example, `JPN`, `NAM`) of the target organization where the resource must be migrated to ensure data residency and compliance. This property isn't required for single-geo target organizations or when the migration is to the default GEO of a multi-geo target organization. Optional. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationTaskParameters](../resources/sharepointmigrationtaskparameters.md).|
|targetGroupIdentity|[groupIdentity](../resources/groupidentity.md)|The identity of the target group in the target tenant, including its mail nickname.|
|targetOrganizationHost|String|The root, admin, or my site host of the specific multi-geo instance of the target organization where the resource must be migrated to ensure data residency and compliance. This property isn't required for single-geo target organizations or when the migration is to the default GEO of a multi-geo target organization. Optional. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationTaskParameters](../resources/sharepointmigrationtaskparameters.md).|
|targetOrganizationId|Guid|The unique Microsoft Entra company ID of the target organization to which the source resource must be migrated. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationTaskParameters](../resources/sharepointmigrationtaskparameters.md).|
|targetSiteUrl|String|The SharePoint URL of the target site. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationTaskParameters](../resources/sharepointmigrationtaskparameters.md).|
|targetUserIdentity|[userIdentity](../resources/useridentity.md)|The target user in the target tenant, including the user object ID and the user principal name.|
|validateOnly|Boolean|Indicates whether this task is an actual migration or only a validation. If the parameter is missing, the system treats it as `false`. The default behavior is a real migration. Optional. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationTaskParameters](../resources/sharepointmigrationtaskparameters.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sharePointUserMigrationTaskParameters"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointUserMigrationTaskParameters",
  "preferredLatestStartDateTime": "String (timestamp)",
  "preferredStartDateTime": "String (timestamp)",
  "sourceSiteUrl": "String",
  "sourceUserIdentity": {"@odata.type": "microsoft.graph.userIdentity"},
  "targetDataLocationCode": "String",
  "targetOrganizationHost": "String",
  "targetOrganizationId": "Guid",
  "targetSiteUrl": "String",
  "targetUserIdentity": {"@odata.type": "microsoft.graph.userIdentity"},
  "validateOnly": "Boolean"
}
```
