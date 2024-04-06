---
title: "ediscoverySearchExportOperation resource type"
description: "Represents the process of an eDiscovery search export."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---

# ediscoverySearchExportOperation resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the process of an eDiscovery search export.

Inherits from [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|additionalOptions|microsoft.graph.security.additionalOptions|Additonal items to include in the export. The possible values are: `none`, `teamsAndYammerConversations`, `cloudAttachments`, `allDocumentVersions`, `subfolderContents`, `listAttachments`, `unknownFutureValue`.|
|completedDateTime|DateTimeOffset|The date and time the operation was completed. Inherited from [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md).|
|createdBy|microsoft.graph.identitySet|The user that created the operation.  Inherited from [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md).|
|createdDateTime|DateTimeOffset|The date and time the operation was created. Inherited from [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md).|
|description|String|The name of export provided by user.|
|displayName|String|The description of the export by the user.|
|exportCriteria|microsoft.graph.security.exportCriteria|Items to be inclded in the exports. The possible values are: `searchHits`, `partiallyIndexed`, `unknownFutureValue`.|
|exportFileMetadata|microsoft.graph.security.exportFileMetadata|This contains filename, size and downloadurl for the respective file.|
|exportFormat|microsoft.graph.security.exportFormat|Format of the emails of the export. The possible values are: `pst`, `msg`, `eml`, `unknownFutureValue`.|
|exportLocation|microsoft.graph.security.exportLocation|Locations to be included in the search .The possible values are: `responsiveLocations`, `nonresponsiveLocations`, `unknownFutureValue`.|
|exportSingleItems|Boolean|Export single items.|
|id|String| The ID for the operation. Read-only. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|percentProgress|Int32|The progress of the operation. Inherited from [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md).|
|resultInfo|[microsoft.graph.resultInfo](../resources/resultinfo.md)|Contains success and failure-specific result information. Inherited from [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md).|
|status|microsoft.graph.security.caseOperationStatus| The status of the case operation. Inherited from [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md).The possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`, `unknownFutureValue`.|

### additionalOptions values

|Member|Description|
|:----|-----------|
| none                        | No additional options selected.|
| teamsAndYammerConversations | Collect up to 12 hours of related conversations when a message matches a search.|
| cloudAtttachments           | Collect items from links to SharePoint or OneDrive.|
| allDocumentVersions         | Collect all versions of SharePoint documents. If not selected, only current versions are collected.|
| subfolderContents           | Collect items inside subfolders of a matched folder.|
| listAttachments             | Collect files attached to SharePoint lists and their child items.|

### exportCriteria values

|Member|Description|
|:----|-----------|
| searchHits | Export collected items with search hits.|
| partiallyIndexed | Include partially indexed (unrecognized format, are encrypted, or weren’t indexed for other reasons)|

### exportFormat values

|Member|Description|
|:----|-----------|
| pst | Mails will be grouped in pst format. |
| msg | Include .msg for each message        |
| eml | Include .eml for each message        |

### exportFileMetadata values

|Member|Description|
|:----|-----------|
| fileName | The name of the file |
| size | The size of the file in Byte. |
| downloadUrl | The url to download the file  |

### exportLocation values

|Member|Description|
|:----|-----------|
| responsiveLocations    | Locations with search hits only.|
| nonresponsiveLocations | Locations with no search hits.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|search|[ediscoverySearch](../resources/security-ediscoverysearch.md)|ediscovery seaches under each case|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoverySearchExportOperation",
  "baseType": "microsoft.graph.security.caseOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoverySearchExportOperation",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "completedDateTime": "String (timestamp)",
  "action": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "percentProgress": "Integer",
  "status": "String",
  "resultInfo": {
    "@odata.type": "microsoft.graph.resultInfo"
  },
  "displayName": "String",
  "description": "String",
  "exportCriteria": "String",
  "exportLocation": "String",
  "additionalOptions": "String",
  "exportFormat": "String",
  "exportFileMetadata": [
    {
      "@odata.type": "microsoft.graph.security.exportFileMetadata"
    }
  ],
  "exportSingleItems": "Boolean"
}
```