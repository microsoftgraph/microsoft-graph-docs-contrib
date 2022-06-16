---
title: "Update teamsAppSettings"
description: "Update the properties of a teamsAppSettings object."
author: "subray2014"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Update teamsAppSettings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [teamsAppSettings](../resources/teamsappsettings.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

>**Note:** Only global administrators and Teams administrators can call this API.

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|TeamworkAppSettings.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /teamwork/teamsAppSettings
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|isChatResourceSpecificConsentEnabled|Boolean|Indicates whether Chat Resource Specific Consent has been enabled for the tenant.|



## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Enable Resource Specific Consent for chats

### Request

<!-- {
  "blockType": "request",
  "name": "update_teamsappsettings"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/teamwork/teamsAppSettings
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.teamsAppSettings",
  "isChatResourceSpecificConsentEnabled": "true"
}
```

### Response

``` http
HTTP/1.1 204 No Content
```

## See also

- [Resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent)