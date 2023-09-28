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

Update the tenant-wide [teamsAppSettings](../resources/teamsappsettings.md) for all Teams apps in the tenant.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

>**Note:** Only global administrators and Teams administrators can call this API.

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|TeamworkAppSettings.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

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
|allowUserRequestsForAppAccess|Boolean|Indicates whether users are allowed to request access to the unavailable Teams apps.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

The following example shows how to allow Teams users to request access to certain Teams apps.

### Request
The following example shows the request.
<!-- {
  "blockType": "request",
  "name": "update_teamsappsettings_2"
}
-->
```http
PATCH https://graph.microsoft.com/v1.0/teamwork/teamsAppSettings
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.teamsAppSettings",
  "allowUserRequestsForAppAccess": "true"
}
```

### Response
The following example shows the response.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

## See also

- [Resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent)
