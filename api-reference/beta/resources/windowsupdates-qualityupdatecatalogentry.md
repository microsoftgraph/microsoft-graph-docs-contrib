---
title: "qualityUpdateCatalogEntry resource type"
description: "Represents metadata for a Windows 10 quality update that you can approve for deployment."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: windows-update-business
doc_type: resourcePageType
---

# qualityUpdateCatalogEntry resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents metadata for a Windows 10 quality update that you can approve for deployment.

Windows 10 quality updates are released one or more times per month. These updates contain both security and quality fixes and are typically released on the second Tuesday of every month; however, they might be released at any time. These updates are cumulative. Later versions always contain all previous fixes. We strongly recommend that you keep devices current by installing the most recent quality updates as soon as they are available.

Inherits from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|catalogName|String|The catalog name of the content. Read-only.|
|cveSeverityInformation|[microsoft.graph.windowsUpdates.qualityUpdateCveSeverityInformation](../resources/windowsupdates-qualityupdatecveseverityinformation.md)|Severity information of the Common Vulnerabilities and Exposures associated with the content.|
|deployableUntilDateTime|DateTimeOffset|The date on which the content is no longer available for deployment using the service. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).|
|displayName|String|The display name of the content. Read-only. Inherited from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).|
|id|String|The unique identifier for the catalog entry. Read-only. Inherited from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).|
|isExpeditable|Boolean|Indicates whether the content can be deployed as an expedited quality update. Read-only.|
|qualityUpdateCadence|microsoft.graph.windowsUpdates.qualityUpdateCadence|The publishing cadence of the quality update. Possible values are: `monthly`, `outOfBand`, `unknownFutureValue`. Read-only.|
|qualityUpdateClassification|microsoft.graph.windowsUpdates.qualityUpdateClassification|The classification on the quality update. Possible values are: `all`, `security`, `nonSecurity`, `unknownFutureValue`. Read-only.|
|releaseDateTime|DateTimeOffset|The release date of the content. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [softwareUpdateCatalogEntry](../resources/windowsupdates-softwareupdatecatalogentry.md).|
|shortName|String|The short name of the content. Read-only.|

## Relationships

|Property|Type|Description|
|:---|:---|:---|
|productRevisions|[microsoft.graph.windowsUpdates.productRevision](../resources/windowsupdates-productrevision.md) collection|The operating system product revisions that are released as part of this quality update.|

## JSON representation

Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
  "baseType": "microsoft.graph.windowsUpdates.softwareUpdateCatalogEntry",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
  "catalogName": "String",
  "cveSeverityInformation": { "@odata.type": "microsoft.graph.windowsUpdates.qualityUpdateCveSeverityInformation" },
  "deployableUntilDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "isExpeditable": "Boolean",
  "qualityUpdateCadence": "String",
  "qualityUpdateClassification": "String",
  "releaseDateTime": "String (timestamp)",
  "shortName": "String"
}
```
