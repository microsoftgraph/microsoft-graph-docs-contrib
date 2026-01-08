---
title: "siteProtectionUnitsBulkAdditionJob resource type"
description: "Represents the list of site URLs or site IDs of SharePoint sites to be added into the corresponding Sharepoint protection policy."
author: "nupurmunda"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 05/22/2025
---

# siteProtectionUnitsBulkAdditionJob resource type

Namespace: microsoft.graph

Represents the properties of a **siteProtectionUnitsBulkAdditionJob** associated with a [SharePoint protection policy](../resources/sharepointprotectionpolicy.md). It contains a list of SharePoint site URLs, and a list of site IDs to be added to the SharePoint protection policy for backup.

Inherits from [protectionUnitsBulkJobBase](../resources/protectionunitsbulkjobbase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/sharepointprotectionpolicy-list-siteprotectionunitsbulkadditionjobs.md)|[siteProtectionUnitsBulkAdditionJob](../resources/siteprotectionunitsbulkadditionjob.md) collection|Get a list of [siteProtectionUnitsBulkAdditionJob](../resources/siteprotectionunitsbulkadditionjob.md) objects and their properties.|
|[Create](../api/siteprotectionunitsbulkadditionjobs-post.md)|[siteProtectionUnitsBulkAdditionJob](../resources/siteprotectionunitsbulkadditionjob.md)|Create a new [siteProtectionUnitsBulkAdditionJob](../resources/siteprotectionunitsbulkadditionjob.md).|
|[Get](../api/siteprotectionunitsbulkadditionjobs-get.md)|[siteProtectionUnitsBulkAdditionJob](../resources/siteprotectionunitsbulkadditionjob.md)|Read the properties and relationships of a [siteProtectionUnitsBulkAdditionJob](../resources/siteprotectionunitsbulkadditionjob.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of the person who created the job.|
|createdDateTime|DateTimeOffset|The date and time that the job was created.|
|displayName|String|The name of the job.|
|error|[publicError](../resources/publicerror.md)|Contains error details if any site-url resolution fails.|
|id|String|The unique identifier of the job associated with the SharePoint protection policy.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified the job.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of the last modification to the job.|
|status|[protectionUnitsBulkJobStatus](../resources/protectionunitsbulkjobbase.md#protectionunitsbulkjobstatus-values )|Status of the job. The possible values are:  `unknown`, `active`, `completed`, `completedWithErrors`, and  `unknownFutureValue`.|
|siteWebUrls|String collection|The list of SharePoint site URLs to add to the SharePoint protection policy.|
|siteIds|String collection|The list of SharePoint site IDs to add to the SharePoint protection policy.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.siteProtectionUnitsBulkAdditionJob",
  "baseType": "microsoft.graph.protectionUnitsBulkJobBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.siteProtectionUnitsBulkAdditionJob",
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
  "siteWebUrls": [
    "String"
   ],
  "siteIds": [
    "String"
   ]
}
```
