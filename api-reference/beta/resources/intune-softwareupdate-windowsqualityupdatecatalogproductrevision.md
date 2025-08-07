---
title: "windowsQualityUpdateCatalogProductRevision resource type"
description: "The operating system product revisions that are released as part of this quality update."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsQualityUpdateCatalogProductRevision resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The operating system product revisions that are released as part of this quality update.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the windows quality update catalog product revision. For example, 'Windows 11, version 22H2, build 22621.4112'. Read-only|
|releaseDateTime|DateTimeOffset|The date and time when the windows quality update catalog product revision was released. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. Read-only|
|versionName|String|The version name of the windows quality update catalog product revision. For example, '22H2'. Read-only|
|productName|String|The product name of the windows quality update catalog product revision. For example, 'Windows 11'. Read-only|
|osBuild|[windowsQualityUpdateProductBuildVersionDetail](../resources/intune-softwareupdate-windowsqualityupdateproductbuildversiondetail.md)|The version details of the windows quality update catalog product revision. Read-only|
|knowledgeBaseArticle|[windowsQualityUpdateProductKnowledgeBaseArticle](../resources/intune-softwareupdate-windowsqualityupdateproductknowledgebasearticle.md)|The knowledge base article associated with the windows quality update catalog product revision. Read-only|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsQualityUpdateCatalogProductRevision"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsQualityUpdateCatalogProductRevision",
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
```