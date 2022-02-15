---
title: "List microsoftApplicationDataAccessSetting"
description: "Get the microsoftApplicationDataAccessSetting resources from the microsoftApplicationDataAccessSetting navigation property."
author: "ttomi"
ms.localizationpriority: medium
ms.prod: "insights"
doc_type: apiPageType
---

# List microsoftApplicationDataAccessSetting

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the microsoftApplicationDataAccessSetting resource from the microsoftApplicationDataAccessSetting navigation property.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account) | User.Read.All, User.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application | Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /organization/{organizationId}/settings/microsoftApplicationDataAccessSetting
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoftApplicationDataAccessSetting](../resources/microsoftapplicationdataaccesssetting.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_microsoftapplicationdataaccesssetting"
}
-->
``` http
GET https://graph.microsoft.com/beta/organization/{organizationId}/settings/microsoftApplicationDataAccessSetting
```

### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.microsoftApplicationDataAccessSetting)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.microsoftApplicationDataAccessSetting",
      "isEnabledInOrganization": true,
      "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
    }
  ]
}
```

## See also

[Customize item insights privacy](/graph/insights-customize-item-insights-privacy) for an organization.