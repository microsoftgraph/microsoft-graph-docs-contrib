---
title: "windowsQualityUpdateCatalogItem resource type"
description: "Windows update catalog item entity"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsQualityUpdateCatalogItem resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows update catalog item entity


Inherits from [windowsUpdateCatalogItem](../resources/intune-softwareupdate-windowsupdatecatalogitem.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsQualityUpdateCatalogItems](../api/intune-softwareupdate-windowsqualityupdatecatalogitem-list.md)|[windowsQualityUpdateCatalogItem](../resources/intune-softwareupdate-windowsqualityupdatecatalogitem.md) collection|List properties and relationships of the [windowsQualityUpdateCatalogItem](../resources/intune-softwareupdate-windowsqualityupdatecatalogitem.md) objects.|
|[Get windowsQualityUpdateCatalogItem](../api/intune-softwareupdate-windowsqualityupdatecatalogitem-get.md)|[windowsQualityUpdateCatalogItem](../resources/intune-softwareupdate-windowsqualityupdatecatalogitem.md)|Read properties and relationships of the [windowsQualityUpdateCatalogItem](../resources/intune-softwareupdate-windowsqualityupdatecatalogitem.md) object.|
|[Create windowsQualityUpdateCatalogItem](../api/intune-softwareupdate-windowsqualityupdatecatalogitem-create.md)|[windowsQualityUpdateCatalogItem](../resources/intune-softwareupdate-windowsqualityupdatecatalogitem.md)|Create a new [windowsQualityUpdateCatalogItem](../resources/intune-softwareupdate-windowsqualityupdatecatalogitem.md) object.|
|[Delete windowsQualityUpdateCatalogItem](../api/intune-softwareupdate-windowsqualityupdatecatalogitem-delete.md)|None|Deletes a [windowsQualityUpdateCatalogItem](../resources/intune-softwareupdate-windowsqualityupdatecatalogitem.md).|
|[Update windowsQualityUpdateCatalogItem](../api/intune-softwareupdate-windowsqualityupdatecatalogitem-update.md)|[windowsQualityUpdateCatalogItem](../resources/intune-softwareupdate-windowsqualityupdatecatalogitem.md)|Update the properties of a [windowsQualityUpdateCatalogItem](../resources/intune-softwareupdate-windowsqualityupdatecatalogitem.md) object.|
|[retrieveWindowsQualityUpdateCatalogItemDetails function](../api/intune-softwareupdate-windowsqualityupdatecatalogitem-retrievewindowsqualityupdatecatalogitemdetails.md)|[windowsQualityUpdateCatalogItemPolicyDetail](../resources/intune-softwareupdate-windowsqualityupdatecatalogitempolicydetail.md) collection||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The catalog item id. Inherited from [windowsUpdateCatalogItem](../resources/intune-softwareupdate-windowsupdatecatalogitem.md)|
|displayName|String|The display name for the catalog item. Inherited from [windowsUpdateCatalogItem](../resources/intune-softwareupdate-windowsupdatecatalogitem.md)|
|releaseDateTime|DateTimeOffset|The date the catalog item was released Inherited from [windowsUpdateCatalogItem](../resources/intune-softwareupdate-windowsupdatecatalogitem.md)|
|endOfSupportDate|DateTimeOffset|The last supported date for a catalog item Inherited from [windowsUpdateCatalogItem](../resources/intune-softwareupdate-windowsupdatecatalogitem.md)|
|kbArticleId|String|Identifies the knowledge base article associated with the Windows quality update catalog item. Read-only|
|classification|[windowsQualityUpdateCategory](../resources/intune-softwareupdate-windowsqualityupdatecategory.md)|The category of the Windows quality update. The possible values are: all, security, nonSecurity. Read-only. The possible values are: `all`, `security`, `nonSecurity`, `unknownFutureValue`, `quickMachineRecovery`.|
|qualityUpdateCadence|[windowsQualityUpdateCadence](../resources/intune-softwareupdate-windowsqualityupdatecadence.md)|The publishing cadence of the quality update. The possible values are: monthly, outOfBand. This property cannot be modified and is automatically populated when the catalog is created. Read-only. The possible values are: `monthly`, `outOfBand`, `unknownFutureValue`.|
|isExpeditable|Boolean|When TRUE, indicates that the quality updates qualify for expedition. When FALSE, indicates the quality updates do not quality for expedition. Default value is FALSE. Read-only|
|productRevisions|[windowsQualityUpdateCatalogProductRevision](../resources/intune-softwareupdate-windowsqualityupdatecatalogproductrevision.md) collection|The operating system product revisions that are released as part of this quality update. Read-only.|
|cveSeverityInformation|[windowsQualityUpdateCveSeverityInformation](../resources/intune-softwareupdate-windowsqualityupdatecveseverityinformation.md)|CVE information for catalog items|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsQualityUpdateCatalogItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsQualityUpdateCatalogItem",
  "id": "String (identifier)",
  "displayName": "String",
  "releaseDateTime": "String (timestamp)",
  "endOfSupportDate": "String (timestamp)",
  "kbArticleId": "String",
  "classification": "String",
  "qualityUpdateCadence": "String",
  "isExpeditable": true,
  "productRevisions": [
    {
      "@odata.type": "microsoft.graph.windowsQualityUpdateCatalogProductRevision",
      "displayName": "String",
      "releaseDateTime": "String (timestamp)",
      "versionName": "String",
      "productName": "String",
      "osBuild": {
        "@odata.type": "microsoft.graph.windowsQualityUpdateProductBuildVersionDetail",
        "majorVersionNumber": 1024,
        "minorVersionNumber": 1024,
        "buildNumber": 1024,
        "updateBuildRevision": 1024
      },
      "knowledgeBaseArticle": {
        "@odata.type": "microsoft.graph.windowsQualityUpdateProductKnowledgeBaseArticle",
        "articleId": "String",
        "articleUrl": "String"
      }
    }
  ],
  "cveSeverityInformation": {
    "@odata.type": "microsoft.graph.windowsQualityUpdateCveSeverityInformation",
    "maxSeverityLevel": "String",
    "maxBaseScore": "4.2",
    "exploitedCves": [
      {
        "@odata.type": "microsoft.graph.windowsQualityUpdateCveDetail",
        "cveNumber": "String",
        "cveInformationUrl": "String"
      }
    ]
  }
}
```