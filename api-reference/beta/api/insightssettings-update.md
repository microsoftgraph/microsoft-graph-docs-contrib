---
title: "Update insights"
description: "Update properties of insightsSettings object"
author: "simonhult"
ms.localizationpriority: medium
ms.prod: "insights"
doc_type: "apiPageType"
---

# Update insightsSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the privacy settings to display or return the specified type of insights in an organization. The type of settings can be contact insights, item insights, or people insights.

To learn more about customizing insights privacy for your organization, see:
-  [Customize item insights privacy](/graph/insights-customize-item-insights-privacy) 
-  [Customize people insights privacy](/graph/insights-customize-people-insights-privacy)

## Permissions

To update settings for contact insights, one of the following permissions is required to call this API. To learn more, including how to choose permissions, see [permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Organization.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

To update settings for item insights or people insights, one of the following permissions is required to call this API. To learn more, including how to choose permissions, see [permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | User.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |


>**Note:** Using delegated permissions for this operation to update insights for contacts, item, or people requires the signed-in user to have a global administrator role.


## HTTP request

To update settings for contact insights:
<!-- { "blockType": "ignored" } -->

```http
PATCH /organization/{organizationId}/settings/contactInsights
```

To update settings for item insights:
<!-- { "blockType": "ignored" } -->

```http
PATCH /organization/{organizationId}/settings/itemInsights
```

To update settings for people insights:
<!-- { "blockType": "ignored" } -->

```http
PATCH /organization/{organizationId}/settings/peopleInsights
```

## Request headers

| Header       | Value|
|:-----------|:------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|isEnabledInOrganization|Boolean| `true` if the specified type of insights are enabled for the organization; `false` if the specified type of insights are disabled for all users without exceptions. Default is `true`. Optional.|
|disabledForGroup|String| The ID of an Azure AD group, of which the specified type of insights are disabled for its members. Default is `empty`. Optional.|

>**Note:** This operation does not verify the **disabledForGroup** property value if you include it in the request body. If you set the **disabledForGroup** property to a string, this operation does not check the existence of the corresponding Azure AD group. This means, if you set **disabledForGroup** to an Azure AD group that does not exist or is deleted afterwards, this operation will not be able to identify any group membership and disable item or people insights for any specific users. If **isEnabledInOrganization** is set to `true`, the operation will enable the specified type of insights for _all_ the users in the organization. 
## Response

If successful, this method returns a `200 OK` response code and [insightsSettings](../resources/insightssettings.md) object in the response body.

## Examples 

### Example 1: Update settings for contact insights
#### Request

The following is an example of a request that shows how an admin updates **isEnabledInOrganization** to enable contact insights for the specified organization; the default for **isEnabledInOrganization** is false, disabling contact insights. The example also sets the **disabledForGroup** privacy setting to prohibit displaying user's contact insights in a particular Azure AD group.


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

---

### Response

The following is an example of the response. 

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

Here is an example request that shows how an admin updates "**disabledForGroup**" privacy setting in order to prohibit displaying item insights of users in a particular Azure AD group.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_insightssettings_iteminsightrequest"
}-->

```http
PATCH https://graph.microsoft.com/beta/organization/{organizationId}/settings/itemInsights
Content-type: application/json

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

---

#### Response

Here is an example of the response. 

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

The following is an example of a request that shows how an admin updates "**disabledForGroup**" privacy setting in order to prohibit displaying people insights of users in a particular Azure AD group.



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

---

### Response

The following is an example of the response. 

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



