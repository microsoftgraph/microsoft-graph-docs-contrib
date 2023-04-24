---
title: "Update cloudPcOrganizationSettings"
description: "Update the properties of a cloudPcOrganizationSettings object."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# Update cloudPcOrganizationSettings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of the [cloudPcOrganizationSettings](../resources/cloudpcorganizationsettings.md) object in a tenant.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.Read.All, CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CloudPC.Read.All, CloudPC.ReadWrite.All|

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
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|enableMEMAutoEnroll|Boolean|Specifies whether new Cloud PCs will be automatically enrolled in Microsoft Endpoint Manager(MEM). The default value is `false`. Optional.|
|enableSingleSignOn|Boolean|`True` if the provisioned Cloud PC can be accessed by single sign-on. `False` indicates that the provisioned Cloud PC doesn't support this feature. Default value is `false`. Windows 365 users can use single sign-on to authenticate to Azure Active Directory (Azure AD) with passwordless options (for example, FIDO keys) to access their Cloud PC. Optional.|
|osVersion|cloudPcOperatingSystem|The version of the operating system (OS) to provision on Cloud PCs. The possible values are: `windows10`, `windows11`, `unknownFutureValue`. Optional.|
|userAccountType|cloudPcUserAccountType|The account type of the user on provisioned Cloud PCs. The possible values are: `standardUser`, `administrator`, `unknownFutureValue`. Optional.|
|windowsSettings|cloudPcWindowsSettings|The settings to apply to Windows while creating Cloud PCs for this organization. The default language value is `en-US`.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following is an example of a request.

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

---

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
