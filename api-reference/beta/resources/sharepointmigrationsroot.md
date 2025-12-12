---
title: "sharePointMigrationsRoot resource type"
description: "Represents the root container for cross-organization (tenant-to-tenant) SharePoint migration operations."
author: "Joey-King"
ms.date: 11/12/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
toc.title: SharePoint migrations root
---

# sharePointMigrationsRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the root container for SharePoint resources and services in Microsoft Graph. This resource provides access to SharePoint migration operations and user and group identity mappings used during migration processes.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get SharePoint group identity mapping](../api/sharepointgroupidentitymapping-get.md)|[sharePointGroupIdentityMapping](../resources/sharepointgroupidentitymapping.md)|Retrieves a specific cross-organization group identity mapping based on the source group's Azure AD object ID.|
|[Update SharePoint group identity mapping](../api/sharepointgroupidentitymapping-update.md)|[sharePointGroupIdentityMapping](../resources/sharepointgroupidentitymapping.md) collection|Performs delta patch operations on group identity mappings for cross-organization migration.|
|[Get SharePoint user identity mapping](../api/sharepointuseridentitymapping-get.md)|[sharePointUserIdentityMapping](../resources/sharepointuseridentitymapping.md)|Retrieves a specific user identity mapping by source user principal name (UPN).|
|[Update SharePoint user identity mapping](../api/sharepointuseridentitymapping-update.md)|[sharePointUserIdentityMapping](../resources/sharepointuseridentitymapping.md) collection|Performs delta patch operations on user identity mappings for cross-organization migration.|
|SharePoint migration task|||
|[Get](../api/sharepointmigrationtask-get.md)|[sharePointMigrationTask](../resources/sharepointmigrationtask.md)|Get a [sharePointMigrationTask](../resources/sharepointmigrationtask.md) that was previously created, using the task ID.|
|[Create or update](../api/sharepointmigrationtask-update.md)|[sharePointMigrationTask](../resources/sharepointmigrationtask.md)|Create or update a [sharePointMigrationTask](../resources/sharepointmigrationtask.md) to migrate a resource from the source organization to the target organization, using the **sharePointMigrationTaskParameters**.|
|[Get by source user principal name](../api/sharepointmigrationtask-getbysourceuserprincipalname.md)|[sharePointMigrationTask](../resources/sharepointmigrationtask.md)|Get a [sharePointMigrationTask](../resources/sharepointmigrationtask.md) that was previously created for a user, using the source **userPrincipalName**.|
|[Get by source site URL](../api/sharepointmigrationtask-getbysourcesiteurl.md)|[sharePointMigrationTask](../resources/sharepointmigrationtask.md)|Get a [sharePointMigrationTask](../resources/sharepointmigrationtask.md) that was previously created for a regular site, using the source site URL.|
|[Get by source group mail nickname](../api/sharepointmigrationtask-getbysourcegroupmailnickname.md)|[sharePointMigrationTask](../resources/sharepointmigrationtask.md)|Get a [sharePointMigrationTask](../resources/sharepointmigrationtask.md) that was previously created for a group, using the source group mail nickname.|
|[Cancel](../api/sharepointmigrationtask-cancel.md)|None|Cancel a [sharePointMigrationTask](../resources/sharepointmigrationtask.md) that moves a specific object from a source organization to a target organization.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the **sharePointMigrationsRoot** resource. Inherited from [entity](../resources/entity.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|crossOrganizationGroupMappings|[sharePointGroupIdentityMapping](../resources/sharepointgroupidentitymapping.md) collection|Collection of group identity mappings for cross-organization migration.|
|crossOrganizationMigrationTasks|[sharePointMigrationTask](../resources/sharepointmigrationtask.md) collection|A collection of **sharePointMigrationTask** resources that represent cross-organization migration tasks.|
|crossOrganizationUserMappings|[sharePointUserIdentityMapping](../resources/sharepointuseridentitymapping.md) collection|Collection of user identity mappings for cross-organization migration.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointMigrationsRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointMigrationsRoot",
  "id": "String (identifier)"
}
```
