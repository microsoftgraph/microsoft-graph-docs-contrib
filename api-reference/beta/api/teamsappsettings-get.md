---
title: "Get teamsAppSettings"
description: "Read the properties and relationships of a teamsAppSettings object."
author: "subray2014"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get teamsAppSettings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [teamsAppSettings](../resources/teamsappsettings.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|TeamworkAppSettings.Read.All, TeamworkAppSettings.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teamwork/teamsAppSettings
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

If successful, this method returns a `200 OK` response code and a [teamsAppSettings](../resources/teamsappsettings.md) object in the response body.

## Examples

### Example 1: Enable installation of apps that require resource-specific consent in chats/meetings.

### Request

<!-- {
  "blockType": "request",
  "name": "get_teamsappsettings"
}
-->
``` http
GET https://graph.microsoft.com/beta/teamwork/teamsAppSettings
```


### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamsAppSettings"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.teamsAppSettings",
    "id": "65bdf003-0c4c-4bca-b102-0821ab0d1364",
    "isChatResourceSpecificConsentEnabled": "true"
  }
}
```

## See also

- [Resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent)