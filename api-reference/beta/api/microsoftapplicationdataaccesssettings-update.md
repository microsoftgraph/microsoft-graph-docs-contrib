---
title: "Update microsoftApplicationDataAccessSettings"
description: "Update the properties of a microsoftApplicationDataAccessSettings object."
author: "ttomi"
ms.localizationpriority: medium
ms.prod: "insights"
doc_type: apiPageType
---

# Update microsoftApplicationDataAccessSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [microsoftApplicationDataAccessSettings](../resources/microsoftapplicationdataaccesssettings.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|User.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PUT /organization/{organizationId}/settings/microsoftApplicationDataAccessSettings
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
|isEnabledForAllMicrosoftApplications|Boolean|When set to 'true', all users in the organization are allowed to invoke any M365 API using any Microsoft application (not restricted to Microsoft Office applications only). This is the default. It is possible to disable this for only a subset of users, by use of the security AAD group identified by the GUID given in `disabledForGroup`. <br> When set to 'false', users in the organization are able to invoke M365 APIs using Microsoft Office applications _only_.|
|disabledForGroup|String|The ID of security AAD group whose members will _not_ be allowed to invoke M365 APIs using Microsoft applications not part of Microsoft Office. <br> This is only applicable if the property above is set to true.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoftApplicationDataAccessSettings](../resources/microsoftapplicationdataaccesssettings.md) object in the response body.

## Examples

### Example 1: Update data access settings for microsoft applications

#### Request

##### [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "update_microsoftapplicationdataaccesssettings"
}
-->
``` http
PUT https://graph.microsoft.com/beta/organization/{organizationId}/settings/microsoftApplicationDataAccessSettings
Content-Type: application/json

{
  "isEnabledForAllMicrosoftApplications": true,
  "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
}
```

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
  "@odata.type": "microsoft.graph.microsoftApplicationDataAccessSettings",
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "isEnabledForAllMicrosoftApplications": true,
  "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
}
```
