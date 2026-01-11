---
title: "Create windowsQualityUpdateCatalogItem"
description: "Create a new windowsQualityUpdateCatalogItem object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Create windowsQualityUpdateCatalogItem

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [windowsQualityUpdateCatalogItem](../resources/intune-softwareupdate-windowsqualityupdatecatalogitem.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/windowsUpdateCatalogItems
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the windowsQualityUpdateCatalogItem object.

The following table shows the properties that are required when you create the windowsQualityUpdateCatalogItem.

|Property|Type|Description|
|:---|:---|:---|
|id|String|The catalog item id. Inherited from [windowsUpdateCatalogItem](../resources/intune-softwareupdate-windowsupdatecatalogitem.md)|
|displayName|String|The display name for the catalog item. Inherited from [windowsUpdateCatalogItem](../resources/intune-softwareupdate-windowsupdatecatalogitem.md)|
|releaseDateTime|DateTimeOffset|The date the catalog item was released Inherited from [windowsUpdateCatalogItem](../resources/intune-softwareupdate-windowsupdatecatalogitem.md)|
|endOfSupportDate|DateTimeOffset|The last supported date for a catalog item Inherited from [windowsUpdateCatalogItem](../resources/intune-softwareupdate-windowsupdatecatalogitem.md)|
|kbArticleId|String|Identifies the knowledge base article associated with the Windows quality update catalog item. Read-only|
|classification|[windowsQualityUpdateCategory](../resources/intune-softwareupdate-windowsqualityupdatecategory.md)|The category of the Windows quality update. Possible values are: all, security, nonSecurity. Read-only. Possible values are: `all`, `security`, `nonSecurity`, `unknownFutureValue`, `quickMachineRecovery`.|
|qualityUpdateCadence|[windowsQualityUpdateCadence](../resources/intune-softwareupdate-windowsqualityupdatecadence.md)|The publishing cadence of the quality update. Possible values are: monthly, outOfBand. This property cannot be modified and is automatically populated when the catalog is created. Read-only. Possible values are: `monthly`, `outOfBand`, `unknownFutureValue`.|
|isExpeditable|Boolean|When TRUE, indicates that the quality updates qualify for expedition. When FALSE, indicates the quality updates do not quality for expedition. Default value is FALSE. Read-only|
|productRevisions|[windowsQualityUpdateCatalogProductRevision](../resources/intune-softwareupdate-windowsqualityupdatecatalogproductrevision.md) collection|The operating system product revisions that are released as part of this quality update. Read-only.|
|cveSeverityInformation|[windowsQualityUpdateCveSeverityInformation](../resources/intune-softwareupdate-windowsqualityupdatecveseverityinformation.md)|CVE information for catalog items|



## Response
If successful, this method returns a `201 Created` response code and a [windowsQualityUpdateCatalogItem](../resources/intune-softwareupdate-windowsqualityupdatecatalogitem.md) object in the response body.

## Example

### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagement/windowsUpdateCatalogItems
Content-type: application/json
Content-length: 1595

{
  "@odata.type": "#microsoft.graph.windowsQualityUpdateCatalogItem",
  "displayName": "Display Name value",
  "releaseDateTime": "2017-01-01T00:01:34.7470482-08:00",
  "endOfSupportDate": "2017-01-01T00:02:08.3437725-08:00",
  "kbArticleId": "Kb Article Id value",
  "classification": "security",
  "qualityUpdateCadence": "outOfBand",
  "isExpeditable": true,
  "productRevisions": [
    {
      "@odata.type": "microsoft.graph.windowsQualityUpdateCatalogProductRevision",
      "displayName": "Display Name value",
      "releaseDateTime": "2017-01-01T00:01:34.7470482-08:00",
      "versionName": "Version Name value",
      "productName": "Product Name value",
      "osBuild": {
        "@odata.type": "microsoft.graph.windowsQualityUpdateProductBuildVersionDetail",
        "majorVersionNumber": 2,
        "minorVersionNumber": 2,
        "buildNumber": 11,
        "updateBuildRevision": 3
      },
      "knowledgeBaseArticle": {
        "@odata.type": "microsoft.graph.windowsQualityUpdateProductKnowledgeBaseArticle",
        "articleId": "Article Id value",
        "articleUrl": "https://example.com/articleUrl/"
      }
    }
  ],
  "cveSeverityInformation": {
    "@odata.type": "microsoft.graph.windowsQualityUpdateCveSeverityInformation",
    "maxSeverityLevel": "important",
    "maxBaseScore": 4.0,
    "exploitedCves": [
      {
        "@odata.type": "microsoft.graph.windowsQualityUpdateCveDetail",
        "cveNumber": "Cve Number value",
        "cveInformationUrl": "https://example.com/cveInformationUrl/"
      }
    ]
  }
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 1644

{
  "@odata.type": "#microsoft.graph.windowsQualityUpdateCatalogItem",
  "id": "8eb831ba-31ba-8eb8-ba31-b88eba31b88e",
  "displayName": "Display Name value",
  "releaseDateTime": "2017-01-01T00:01:34.7470482-08:00",
  "endOfSupportDate": "2017-01-01T00:02:08.3437725-08:00",
  "kbArticleId": "Kb Article Id value",
  "classification": "security",
  "qualityUpdateCadence": "outOfBand",
  "isExpeditable": true,
  "productRevisions": [
    {
      "@odata.type": "microsoft.graph.windowsQualityUpdateCatalogProductRevision",
      "displayName": "Display Name value",
      "releaseDateTime": "2017-01-01T00:01:34.7470482-08:00",
      "versionName": "Version Name value",
      "productName": "Product Name value",
      "osBuild": {
        "@odata.type": "microsoft.graph.windowsQualityUpdateProductBuildVersionDetail",
        "majorVersionNumber": 2,
        "minorVersionNumber": 2,
        "buildNumber": 11,
        "updateBuildRevision": 3
      },
      "knowledgeBaseArticle": {
        "@odata.type": "microsoft.graph.windowsQualityUpdateProductKnowledgeBaseArticle",
        "articleId": "Article Id value",
        "articleUrl": "https://example.com/articleUrl/"
      }
    }
  ],
  "cveSeverityInformation": {
    "@odata.type": "microsoft.graph.windowsQualityUpdateCveSeverityInformation",
    "maxSeverityLevel": "important",
    "maxBaseScore": 4.0,
    "exploitedCves": [
      {
        "@odata.type": "microsoft.graph.windowsQualityUpdateCveDetail",
        "cveNumber": "Cve Number value",
        "cveInformationUrl": "https://example.com/cveInformationUrl/"
      }
    ]
  }
}
```