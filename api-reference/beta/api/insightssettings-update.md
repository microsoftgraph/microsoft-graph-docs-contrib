---
title: "Update insights"
description: "Update privacy settings to display or return the specified type of insights in an organization."
author: "simonhult"
ms.localizationpriority: medium
ms.prod: "insights"
doc_type: "apiPageType"
---

# Update insightsSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update privacy settings to display or return the specified type of insights in an organization. The type of settings can be contact insights, item insights, or people insights.

To learn more about customizing insights privacy for your organization, see:
-  [Customize item insights privacy](/graph/insights-customize-item-insights-privacy) 
-  [Customize people insights privacy](/graph/insights-customize-people-insights-privacy)

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

The following tables show the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### To update **contact insights** settings for organization
<!-- { "blockType": "permissions", "name": "insightssettings_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/insightssettings-update-permissions.md)]


### To update **item insights** settings for organization
<!-- { "blockType": "permissions", "name": "insightssettings_update_iteminsights" } -->
[!INCLUDE [permissions-table](../includes/permissions/peopleadminsettings-post-iteminsights-permissions.md)]

### To update **people insights** settings for organization
<!-- { "blockType": "permissions", "name": "insightssettings_update_2" } -->
[!INCLUDE [permissions-table](../includes/permissions/insightssettings-update-2-permissions.md)]

>**Note:** Using delegated permissions for this operation to update insights for contacts, item, or people requires the signed-in user to have a Global Administrator role.


## HTTP request

To update settings for contact insights:
<!-- { "blockType": "ignored" } -->

```http
PATCH /organization/{organizationId}/settings/contactInsights
```

To update settings for item insights:
<!-- { "blockType": "ignored" } -->

```http
PATCH /admin/people/itemInsights
```

To update settings for people insights:
<!-- { "blockType": "ignored" } -->

```http
PATCH /organization/{organizationId}/settings/peopleInsights
```

## Request headers

| Header       | Value|
|:-----------|:------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json  |

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|disabledForGroup|String| The ID of a Microsoft Entra group, of which the specified type of insights are disabled for its members. Default is `empty`. Optional.|
|isEnabledInOrganization|Boolean| `true` if the specified insight type is enabled for the organization; `false` if the specified insight type is disabled for all users without exceptions. Default is `true`. Optional.|

>**Note:** This operation does not verify the **disabledForGroup** property value if you include it in the request body. If you set the **disabledForGroup** property to a String, this operation does not check the existence of the corresponding Microsoft Entra group. This means, if you set **disabledForGroup** to a Microsoft Entra group that does not exist or is deleted afterwards, this operation will not be able to identify any group membership and disable item or people insights for any specific users. If **isEnabledInOrganization** is set to `true`, the operation will enable the specified type of insights for _all_ the users in the organization. 

## Response

If successful, this method returns a `200 OK` response code and an [insightsSettings](../resources/insightssettings.md) object in the response body.

## Examples 

### Example 1: Update settings for contact insights
#### Request

The following example shows how an admin updates the **isEnabledInOrganization** property to enable contact insights for the specified organization; the default value for **isEnabledInOrganization** is `false`, disabling contact insights. The example also sets the **disabledForGroup** privacy setting to prohibit displaying user's contact insights in a particular Microsoft Entra group.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_insightssettings_contactinsightsrequest"
}-->
```http
PATCH https://graph.microsoft.com/beta/organization/{organizationId}/settings/contactInsights
Content-type: application/json

{
  "isEnabledInOrganization": true,
  "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-insightssettings-contactinsightsrequest-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-insightssettings-contactinsightsrequest-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-insightssettings-contactinsightsrequest-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-insightssettings-contactinsightsrequest-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-insightssettings-contactinsightsrequest-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-insightssettings-contactinsightsrequest-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-insightssettings-contactinsightsrequest-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-insightssettings-contactinsightsrequest-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.insightsSettings",
  "name": "update_insightssettings_contactinsightsrequest"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "isEnabledInOrganization": true,
  "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
}
```

### Example 2: Update settings for item insights
#### Request

The following example shows how an admin updates the **disabledForGroup** privacy setting in order to prohibit displaying item insights of users in a particular Microsoft Entra group.



# [HTTP](#tab/http)
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-insightssettings-iteminsightrequest-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-insightssettings-iteminsightrequest-cli-snippets.md)]
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

#### Response

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


### Example 3: Update settings for people insights

#### Request

The following example shows how an admin updates the **disabledForGroup** privacy setting in order to prohibit displaying people insights of users in a particular Microsoft Entra group.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_insightssettings_peopleinsightsrequest"
}-->
```http
PATCH https://graph.microsoft.com/beta/organization/{organizationId}/settings/peopleInsights
Content-type: application/json

{
  "isEnabledInOrganization": true,
  "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-insightssettings-peopleinsightsrequest-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-insightssettings-peopleinsightsrequest-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-insightssettings-peopleinsightsrequest-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-insightssettings-peopleinsightsrequest-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-insightssettings-peopleinsightsrequest-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-insightssettings-peopleinsightsrequest-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-insightssettings-peopleinsightsrequest-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-insightssettings-peopleinsightsrequest-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.insightsSettings",
  "name": "update_insightssettings_peopleinsightsrequest"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "isEnabledInOrganization": true,
  "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
}
```
