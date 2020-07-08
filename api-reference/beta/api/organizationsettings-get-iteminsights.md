---
title: "Get itemInsights"
description: "Retrieve properties of itemInsightsSettings object"
author: "simonhult"
localization_priority: Normal
ms.prod: "insights"
doc_type: "apiPageType"
---

# Get itemInsights

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read [itemInsightsSettings](../resources/iteminsightssettings.md) object.

To learn how to update the properties of the [itemInsightsSettings](../resources/iteminsightssettings.md) object, see [update-iteminsights](organizationsettings-update-iteminsights.md).

To learn how to customize item insights privacy for your organization, see [customize insights privacy](/concepts/customize-item-insights-privacy.md). 

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Organization.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Organization.ReadWrite.All |

>**Note:** Using delegated permissions for this operation requires the signed-in user to have a global administrator role.

## HTTP request
<!-- { "blockType": "ignored" } -->

```http
GET /organization/settings/itemInsights
```

## Request headers

| Name       | Description|
|:-----------|:----------|
| Authorization  | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [itemInsightsSettings](../resources/iteminsightssettings.md) object in the response body.

>**Note:** This endpoint verifies validity of a property value but does not check existence of an Azure Active Directory Group. This means, if you configured a Azure AD group that did not exist or was deleted after, then this method will show previously predefined value of 'disabledForGroup' property but item insights of these group members might be enabled. 

## Example

##### Request
<!-- {
  "blockType": "request",
  "name": "get_iteminsightssettings"
}-->

```http
GET https://graph.microsoft.com/beta/organization/settings/itemInsights
```

##### Response

Here is an example of the response. 
> **Note:** The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.itemInsightsSettings",
  "name": "get_iteminsightssettings"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
{
  "isEnabledInOrganization": true,
  "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
}
```
