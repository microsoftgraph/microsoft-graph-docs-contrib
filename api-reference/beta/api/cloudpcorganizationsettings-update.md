---
title: "Update cloudPcOrganizationSettings"
description: "Update the properties of a cloudPcOrganizationSettings object."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.topic: reference
---

# Update cloudPcOrganizationSettings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of the [cloudPcOrganizationSettings](../resources/cloudpcorganizationsettings.md) object in a tenant.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcorganizationsettings_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcorganizationsettings-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/virtualEndpoint/organizationSettings
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
|enableMEMAutoEnroll|Boolean|Specifies whether new Cloud PCs will be automatically enrolled in Microsoft Endpoint Manager(MEM). The default value is `false`. Optional.|
|enableSingleSignOn|Boolean|`True` if the provisioned Cloud PC can be accessed by single sign-on. `False` indicates that the provisioned Cloud PC doesn't support this feature. Default value is `false`. Windows 365 users can use single sign-on to authenticate to Microsoft Entra ID with passwordless options (for example, FIDO keys) to access their Cloud PC. Optional.|
|osVersion|cloudPcOperatingSystem|The version of the operating system (OS) to provision on Cloud PCs. The possible values are: `windows10`, `windows11`, `unknownFutureValue`. Optional.|
|userAccountType|cloudPcUserAccountType|The account type of the user on provisioned Cloud PCs. The possible values are: `standardUser`, `administrator`, `unknownFutureValue`. Optional.|
|windowsSettings|cloudPcWindowsSettings|The settings to apply to Windows while creating Cloud PCs for this organization. The default language value is `en-US`.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_cloudpcorganizationsettings"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/organizationSettings
Content-Type: application/json
Content-length: 127

{
  "@odata.type": "#microsoft.graph.cloudPcOrganizationSettings",
  "enableMEMAutoEnroll": true,
  "osVersion": "windows11",
  "userAccountType": "standardUser",
  "windowsSettings": {
    "language": "en-US"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-cloudpcorganizationsettings-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-cloudpcorganizationsettings-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-cloudpcorganizationsettings-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-cloudpcorganizationsettings-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-cloudpcorganizationsettings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-cloudpcorganizationsettings-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-cloudpcorganizationsettings-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-cloudpcorganizationsettings-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
