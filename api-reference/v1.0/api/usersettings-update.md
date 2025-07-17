---
title: "Update userSettings"
description: "Update the properties of the settings object. "
author: "yyuank"
ms.reviewer: "iamut"
ms.localizationpriority: medium
ms.subservice: entra-users
doc_type: apiPageType
ms.date: 07/22/2024
---

# Update userSettings

Namespace: microsoft.graph

Update the properties of the [userSettings](../resources/usersettings.md) object. 
Users in the same organization can have different settings based on their preference or on the organization policies. 
To get the user current settings, see [current user settings](usersettings-get.md). 

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

### Batch request

It's also possible to opt out multiple users from Delve and disable their contribution on content relevancy for the whole organization through a batch request.
To learn more, see [JSON batching](/graph/json-batching).

>**Important**: Only members of the [organization management](/exchange/permissions/permissions?view=exchserver-2019#role-groups&preserve-view=true) role group can update multiple users. 



## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "usersettings_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/usersettings-update-permissions.md)]

## HTTP request

```http
PATCH /me/settings
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

Request with a 'user id' or 'userPrincipalName' is only accessible by the user or by a user with the User.ReadWrite.All permissions. To learn more, see [Permissions](/graph/permissions-reference). 

```http
PATCH /users/{id | userPrincipalName}/settings/
```

## Request headers

| Header       | Value|
|:-----------|:------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json  |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that aren't included in the request body maintains their previous values or are recalculated based on changes to other property values. For best performance, you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|contributionToContentDiscoveryDisabled|Boolean|Set to true to disable delegate access to the [Trending](/graph/api/resources/insights-trending?view=graph-rest-1.0&preserve-view=true) API and to disable access to documents in Office Delve for the user. Setting to true also affects the relevance of the content displayed in Microsoft 365 - for example, Suggested sites in SharePoint Home and the Discover view in OneDrive for Business show less relevant results. This setting reflects the control state in [Office Delve](https://support.office.com/en-us/article/are-my-documents-safe-in-office-delve-f5f409a2-37ed-4452-8f61-681e5e1836f3?ui=en-US&rs=en-US&ad=US#bkmk_optout).|

## Response
If successful, this method returns a `200 OK` response code and the updated **userSettings** in the response body.

## Example 

### Request

Here's an example request on how to opt out a user from Delve and disable their contribution on content relevancy for the whole organization.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "usersettings_update_v1_e1"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/me/settings
Content-type: application/json

{
  "contributionToContentDiscoveryDisabled": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/usersettings-update-v1-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/usersettings-update-v1-e1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/usersettings-update-v1-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/usersettings-update-v1-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/usersettings-update-v1-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/usersettings-update-v1-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/usersettings-update-v1-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/usersettings-update-v1-e1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response. Note: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userSettings"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('c771-00aa-4fa0-92ac-905f')/settings/$entity",
  "contributionToContentDiscoveryAsOrganizationDisabled": false,
  "contributionToContentDiscoveryDisabled": true
}
```
