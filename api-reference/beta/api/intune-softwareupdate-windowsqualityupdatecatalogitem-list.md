---
title: "List windowsQualityUpdateCatalogItems"
description: "List properties and relationships of the windowsQualityUpdateCatalogItem objects."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# List windowsQualityUpdateCatalogItems

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [windowsQualityUpdateCatalogItem](../resources/intune-softwareupdate-windowsqualityupdatecatalogitem.md) objects.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/windowsUpdateCatalogItems
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [windowsQualityUpdateCatalogItem](../resources/intune-softwareupdate-windowsqualityupdatecatalogitem.md) objects in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/windowsUpdateCatalogItems
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1845

{
  "value": [
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
  ]
}
```