---
title: "Get Insights"
description: "Retrieve properties of insightsSettings object"
author: "simonhult"
ms.localizationpriority: medium
ms.prod: "insights"
doc_type: "apiPageType"
---

# Get insightsSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties of [insightsSettings](../resources/insightssettings.md) object.

To learn how to customize insights privacy for your organization see:
-  [Customize item insights privacy](/graph/insights-customize-item-insights-privacy?view=graph-rest-1.0). 
-  [Customize people insights privacy](/graph/insights-customize-people-insights-privacy?view=graph-rest-1.0).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | User.Read.All, User.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->

```http
GET /organization/{organizationId}/settings/itemInsights
```

## Request headers

| Name       | Description|
|:-----------|:----------|
| Authorization  | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [insightsSettings](../resources/insightssettings.md) object in the response body.

>**Note:** This operation verifies the validity of property values of the specified **itemInsightsSettings** resource. If the **disabledForGroup** property is set, this operation does not check the existence of the corresponding Azure AD Group. This means, if you set **disabledForGroup** to an Azure AD group that did not exist or was deleted afterwards, this operation will not be able to identify any group membership and disable item insights for any specific users. If **isEnabledInOrganization** is set to `true`, the operation will enable insights for all the users in the organization. 

## Example - itemInsights

##### Request


<!-- {
  "blockType": "request",
  "name": "get_insightssettingsrequest"
}-->

```http
GET https://graph.microsoft.com/beta/organization/{organizationId}/settings/itemInsights
```



##### Response

Here is an example of the response. 
> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.insightsSettings",
  "name": "get_insightssettingsrequest"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "isEnabledInOrganization": true,
  "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
}
```

## Example - peopleInsights

##### Request

<!-- {
  "blockType": "request",
  "name": "get_insightssettingspeoplerequest"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/organization/{organizationId}/settings/peopleInsights
```

---


##### Response

Here is an example of the response. 
> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.insightsSettings",
  "name": "get_insightssettingspeoplerequest"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "isEnabledInOrganization": true,
  "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
}
```
