---
title: "Update insights"
description: "Update privacy settings to display or return the specified type of insights in an organization."
author: "larsb"
ms.localizationpriority: medium
ms.subservice: "insights"
doc_type: "apiPageType"
ms.date: 07/31/2024
ms.custom: sfi-ga-nochange
---

# Update insightsSettings

Namespace: microsoft.graph

Update privacy settings to display or return the specified type of insights in an organization. Currently, [itemInsights](../resources/iteminsights.md) is the only supported type of settings.

To learn more about customizing insights privacy for your organization, see [Customize item insights privacy in Microsoft Graph](/graph/insights-customize-item-insights-privacy).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

The following tables show the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### To update itemInsights settings for an organization
<!-- { "blockType": "permissions", "name": "insightssettings_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/insightssettings-update-permissions.md)]

>**Note:** Using delegated permissions for this operation to update item insights requires the signed-in user to have a Global Administrator role.

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
| Content-Type  | application/json. Required.  |

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property | Type | Description |
|:---------------|:--------|:----------|
|disabledForGroup|String| The ID of a Microsoft Entra group, of which the specified type of insights are disabled for its members. Default is `empty`. Optional.|
|isEnabledInOrganization|Boolean| `true` if the specified insight type is enabled for the organization; `false` if the specified insight type is disabled for all users without exceptions. The default value is `true`. Optional.|

>**Note:** This operation doesn't verify the **disabledForGroup** property value if you include it in the request body. If you set the **disabledForGroup** property to a String, this operation doesn't check the existence of the corresponding Microsoft Entra group. This means, if you set **disabledForGroup** to a Microsoft Entra group that doesn't exist or is deleted afterwards, this operation can't identify any group membership and disable item insights for any specific users. If **isEnabledInOrganization** is set to `true`, the operation enables the specified type of insights for _all_ the users in the organization.

## Response

If successful, this method returns a `200 OK` response code and an [insightsSettings](../resources/insightssettings.md) object in the response body.

## Examples

### Request

The following example shows how an admin updates the **disabledForGroup** privacy setting to prevent the display of item insights of users in a particular Microsoft Entra group.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_insightssettings_iteminsightrequest"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/admin/people/itemInsights
Content-Type: application/json

{
  "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-insightssettings-iteminsightrequest-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-insightssettings-iteminsightrequest-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-insightssettings-iteminsightrequest-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-insightssettings-iteminsightrequest-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-insightssettings-iteminsightrequest-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-insightssettings-iteminsightrequest-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-insightssettings-iteminsightrequest-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
