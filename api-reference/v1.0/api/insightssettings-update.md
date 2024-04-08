---
title: "Update insights"
description: "Update privacy settings to display or return the specified type of insights in an organization."
author: "simonhult"
ms.localizationpriority: medium
ms.subservice: "insights"
doc_type: "apiPageType"
---

# Update insightsSettings

Namespace: microsoft.graph

Update privacy settings to display or return the specified type of insights in an organization. The type of settings can be item insights.

To learn more about customizing insights privacy for your organization, see:
-  [Customize item insights privacy](/graph/insights-customize-item-insights-privacy)

## Permissions

The following tables show the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### To update **item insights** settings for an organization
<!-- { "blockType": "permissions", "name": "insightssettings_update_iteminsights" } -->
[!INCLUDE [permissions-table](../includes/permissions/peopleadminsettings-post-iteminsights-permissions.md)]

>**Note:** Using delegated permissions for this operation to update insights for contacts, item, or people requires the signed-in user to have a Global Administrator role.

## HTTP request

To update settings for item insights:
<!-- { "blockType": "ignored" } -->

```http
PATCH /admin/people/itemInsights
```

## Request headers

| Header       | Value|
|:-----------|:------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json  |

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property | Type | Description |
|:---------------|:--------|:----------|
|disabledForGroup|String| The ID of a Microsoft Entra group, of which the specified type of insights are disabled for its members. Default is `empty`. Optional.|
|isEnabledInOrganization|Boolean| `true` if the specified insight type is enabled for the organization; `false` if the specified insight type is disabled for all users without exceptions. Default is `true`. Optional.|

>**Note:** This operation does not verify the **disabledForGroup** property value if you include it in the request body. If you set the **disabledForGroup** property to a String, this operation does not check the existence of the corresponding Microsoft Entra group. This means, if you set **disabledForGroup** to a Microsoft Entra group that does not exist or is deleted afterwards, this operation will not be able to identify any group membership and disable item or people insights for any specific users. If **isEnabledInOrganization** is set to `true`, the operation will enable the specified type of insights for _all_ the users in the organization.

## Response

If successful, this method returns a `200 OK` response code and an [insightsSettings](../resources/insightssettings.md) object in the response body.

## Examples

### Request

The following example shows how an admin updates the **disabledForGroup** privacy setting in order to prohibit displaying item insights of users in a particular Microsoft Entra group.

<!-- {
  "blockType": "request",
  "name": "update_insightssettings_iteminsightrequest"
}-->

```http
PATCH https://graph.microsoft.com/beta/admin/people/itemInsights
Content-type: application/json

{
  "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
}
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.insightsSettings",
  "name": "update_insightssettings_iteminsightrequest"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
}
```
