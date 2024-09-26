---
title: "driveProtectionUnitsBulkAdditionJob resource type"
description: "Represents the list of drives and directoryObjectIds of OneDrive users to be added into the corresponding OneDrive Protection Policy."
author: "neminbshah"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# driveProtectionUnitsBulkAdditionJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the properties of a driveProtectionUnitsBulkAdditionJob associated with a [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md). It contains a list of email address, and a list of directoryObjectIds to be added into the OneDrive Protection Policy for backup.

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
|id|String|The unique identifier of the job associated with the OneDrive protection policy.|
|displayName|String|The name of the job.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of the person who created the job.|
|createdDateTime|DateTimeOffset|The date and time that the job was created.|
|error|[publicError](../resources/publicerror.md)|Contains error details if any email address resolution fails.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified the job.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of the last modification to the job.|
|status|[protectionUnitsBulkJobStatus](../resources/protectionunitsbulkjobbase.md#protectionunitsbulkjobstatus-values )|Status of the job. The possible values are: `active`, `completed`, `completedWithErrors`.|
|drives|Collection(String)|The list of email addresses to add into the OneDrive protection policy.|
|directoryObjectIds|Collection(String)|The list of OneDrive directoryObjectIds to add into the OneDrive protection policy.|

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
