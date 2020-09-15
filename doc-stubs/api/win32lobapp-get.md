---
title: "Get win32LobApp"
description: "Read the properties and relationships of a win32LobApp object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get win32LobApp
Namespace: microsoft.graph

Read the properties and relationships of a [win32LobApp](../resources/win32lobapp.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Entity URI for microsoft.graph.win32LobApp not found
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [win32LobApp](../resources/win32lobapp.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_win32lobapp"
}
-->
``` http
GET https://graph.microsoft.com/v1.0** Entity URI for microsoft.graph.win32LobApp not found
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.win32LobApp"
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": {
    "@odata.type": "#microsoft.graph.win32LobApp",
    "id": "1a0f86f9-86f9-1a0f-f986-0f1af9860f1a",
    "displayName": "String",
    "description": "String",
    "publisher": "String",
    "largeIcon": {
      "@odata.type": "microsoft.graph.mimeContent"
    },
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)",
    "isFeatured": "Boolean",
    "privacyInformationUrl": "String",
    "informationUrl": "String",
    "owner": "String",
    "developer": "String",
    "notes": "String",
    "publishingState": "String",
    "committedContentVersion": "String",
    "fileName": "String",
    "size": "Integer",
    "installCommandLine": "String",
    "uninstallCommandLine": "String",
    "applicableArchitectures": "String",
    "minimumFreeDiskSpaceInMB": "Integer",
    "minimumMemoryInMB": "Integer",
    "minimumNumberOfProcessors": "Integer",
    "minimumCpuSpeedInMHz": "Integer",
    "rules": [
      {
        "@odata.type": "microsoft.graph.win32LobAppRegistryRule"
      }
    ],
    "installExperience": {
      "@odata.type": "microsoft.graph.win32LobAppInstallExperience"
    },
    "returnCodes": [
      {
        "@odata.type": "microsoft.graph.win32LobAppReturnCode"
      }
    ],
    "msiInformation": {
      "@odata.type": "microsoft.graph.win32LobAppMsiInformation"
    },
    "setupFilePath": "String",
    "minimumSupportedWindowsRelease": "String"
  }
}
```

