---
title: "restoreSessionArtifactCount resource type"
description: "Represents artifact count metadata of a particular restoreSession"
author: "satpatel1"
ms.reviewer: "satpatel1"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: RestoreSessionArtifactCount
---

# restoreSessionArtifactCount resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents artifact count metadata of a particular [Restore Session](../resources/restoreSessionBase.md). Restore session APIs are used by SharePoint, OneDrive, and Exchange Online Admins to perform restore-related tasks on artifacts that are protected as part of a protection policy.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/backuprestoreroot-post-sharepointrestoresessions.md)|[sharePointRestoreSession](../resources/sharepointrestoresession.md)|Create a new [sharePointRestoreSession](../resources/sharepointrestoresession.md).|
|[Create](../api/backuprestoreroot-post-onedriveforbusinessrestoresessions.md)|[oneDriveForBusinessRestoreSession](../resources/onedriveforbusinessrestoresessions.md)|Create a new [oneDriveForBusinessRestoreSession](../resources/onedriveforbusinessrestoresession.md).|
|[Create](../api/backuprestoreroot-post-exchangerestoresessions.md)|[exchangeRestoreSession](../resources/exchangerestoresession.md)|Create a new [exchangeRestoreSession](../resources/exchangerestoresession.md).|
|[List](../api/backuprestoreroot-list-restoresessions.md)|[restoreSessionBase](../resources/restoresessionbase.md) collection|Get a list of  [restoreSessionBase](../resources/restoresessionbase.md) objects and their properties.|
|[Get](../api/restoresessionbase-get.md)|[restoreSessionBase](../resources/restoresessionbase.md)|Read the properties and relationships of a [restoreSessionBase](../resources/restoresessionbase.md) object.|
|[Activate](../api/restoresessionbase-activate.md)|[restoreSessionBase](../resources/restoresessionbase.md)|Activate a draft restore session.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|total|Int32|Number of artifacts present in the restore session.|
|inProgress|Int32|Count of artifacts whose restore is in progress.|
|completed|Int32|Count of artifacts whose restore is completed.|
|failed|Int32|Count of artifacts whose restore is failed.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.restoreSessionArtifactCount",
  "baseType": "microsoft.graph.complexType",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.restoreSessionArtifactCount",
  "total": "Int32",
  "inProgress": "Int32",
  "completed": "Int32",
  "failed": "Int32"
}
```
