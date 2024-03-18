---
title: "Update microsoftApplicationDataAccessSettings"
description: "Update the properties of a microsoftApplicationDataAccessSettings object."
author: "ttomi"
ms.localizationpriority: medium
ms.subservice: "insights"
doc_type: apiPageType
---

# Update microsoftApplicationDataAccessSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the settings in a [microsoftApplicationDataAccessSettings](../resources/microsoftapplicationdataaccesssettings.md) object that specify access from Microsoft applications to Microsoft 365 user data in an organization.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "microsoftapplicationdataaccesssettings_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/microsoftapplicationdataaccesssettings-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /organization/{organizationId}/settings/microsoftApplicationDataAccess
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|isEnabledForAllMicrosoftApplications|Boolean|When set to `true`, all users in the organization can access in a Microsoft app any Microsoft 365 data that the user has been authorized to access. The Microsoft app can be a Microsoft 365 app (e.g., Excel, Outlook) or non-Microsoft 365 app (e.g., Edge). The default is `true`. <br> It is possible to disable this access for a subset of users in a Microsoft Entra security group, by specifying the group in the **disabledForGroup** property. <br> When set to `false`, users can access authorized Microsoft 365 data only in a Microsoft 365 app.|
|disabledForGroup|String|The ID of a Microsoft Entra security group whose members are allowed to access Microsoft 365 data using only Microsoft 365 apps, but not other Microsoft apps such as Edge. <br> This is only applicable if **isEnabledForAllMicrosoftApplications** is set to `true`.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoftApplicationDataAccessSettings](../resources/microsoftapplicationdataaccesssettings.md) object in the response body.

## Examples

### Request

The following example request shows how an admin updates the **disabledForGroup** privacy setting in order to prohibit users in a particular Microsoft Entra group from accessing Microsoft 365 data using Microsoft applications that are not part of Microsoft 365.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_microsoftapplicationdataaccesssettings"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/organization/{organizationId}/settings/microsoftApplicationDataAccess
Content-Type: application/json

{
  "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-microsoftapplicationdataaccesssettings-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-microsoftapplicationdataaccesssettings-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-microsoftapplicationdataaccesssettings-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-microsoftapplicationdataaccesssettings-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-microsoftapplicationdataaccesssettings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-microsoftapplicationdataaccesssettings-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-microsoftapplicationdataaccesssettings-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-microsoftapplicationdataaccesssettings-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.microsoftApplicationDataAccessSettings",
  "name": "update_microsoftapplicationdataaccesssettings"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.microsoftApplicationDataAccessSettings",
  "isEnabledForAllMicrosoftApplications": true,
  "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
}
```
