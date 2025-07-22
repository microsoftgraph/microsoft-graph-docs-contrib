---
title: "driveProtectionUnitsBulkAdditionJob resource type"
description: "Represents the list of drives and directory object IDs of OneDrive users to be added into the corresponding OneDrive protection policy."
author: "nupurmunda"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 05/22/2025
---

# driveProtectionUnitsBulkAdditionJob resource type

Namespace: microsoft.graph

Represents the properties of a **driveProtectionUnitsBulkAdditionJob** associated with a [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md). It contains a list of email addresses, drives, and, directory object IDs to be added to the OneDrive protection policy for backup.

Inherits from [protectionUnitsBulkJobBase](../resources/protectionunitsbulkjobbase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/onedriveforbusinessprotectionpolicy-list-driveprotectionunitsbulkadditionjobs.md)|[driveProtectionUnitsBulkAdditionJob](../resources/driveprotectionunitsbulkadditionjob.md) collection|Get a list of [driveProtectionUnitsBulkAdditionJob](../resources/driveprotectionunitsbulkadditionjob.md) objects and their properties.|
|[Create](../api/driveprotectionunitsbulkadditionjobs-post.md)|[driveProtectionUnitsBulkAdditionJob](../resources/driveprotectionunitsbulkadditionjob.md)|Create a new [driveProtectionUnitsBulkAdditionJob](../resources/driveprotectionunitsbulkadditionjob.md).|
|[Get](../api/driveprotectionunitsbulkadditionjobs-get.md)|[driveProtectionUnitsBulkAdditionJob](../resources/driveprotectionunitsbulkadditionjob.md)|Read the properties and relationships of a [driveProtectionUnitsBulkAdditionJob](../resources/driveprotectionunitsbulkadditionjob.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of the person who created the job.|
|createdDateTime|DateTimeOffset|The date and time that the job was created.|
|directoryObjectIds|String collection|The list of OneDrive **directoryObjectIds** to add to the OneDrive protection policy.|
|displayName|String|The name of the job.|
|drives|String collection|The list of email addresses to add to the OneDrive protection policy.|
|error|[publicError](../resources/publicerror.md)|Contains error details if any email address resolution fails.|
|id|String|The unique identifier of the job associated with the OneDrive protection policy.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified the job.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of the last modification to the job.|
|status|[protectionUnitsBulkJobStatus](../resources/protectionunitsbulkjobbase.md#protectionunitsbulkjobstatus-values )|Status of the job. The possible values are:  `unknown`, `active`, `completed`, `completedWithErrors`, and  `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.driveProtectionUnitsBulkAdditionJob",
  "baseType": "microsoft.graph.protectionUnitsBulkJobBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.driveProtectionUnitsBulkAdditionJob",
  "id": "String (identifier)",
  "displayName": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "drives": [
    "String"
   ],
  "directoryObjectIds": [
    "String"
   ]
}
```
