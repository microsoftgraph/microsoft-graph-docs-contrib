---
title: "Update secureScoreControlProfile"
description: "Update an editable secureScoreControlProfile object within any integrated solution to change various properties, such as assignedTo or tenantNote."
author: "preetikr"
ms.localizationpriority: medium
ms.subservice: security
doc_type: apiPageType
ms.date: 03/06/2024
---

# Update secureScoreControlProfile

Namespace: microsoft.graph

Update an editable **secureScoreControlProfile** object within any integrated solution to change various properties, such as **assignedTo** or **tenantNote**.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "securescorecontrolprofile_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/securescorecontrolprofile-update-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /security/secureScoreControlProfiles/{id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer {code}. Required.|
|Prefer | return=representation. |

## Request body

In the request body, supply a JSON representation of the values for relevant fields that should be updated. The body **must** contain the `vendorInformation` property with valid `provider` and `vendor` fields. The following table lists the fields that can be updated for a **secureScoreControlProfile**. The values for existing properties that are not included in the request body will not change. For best performance, don't include existing values that haven't changed.

| Property   | Type |Description|
|:---------------|:--------|:----------|
|assignedTo|String|Name of the analyst the control is assigned to for triage, implementation, or remediation.|
|comment|String|Analyst comments on the control (for customer control management).|
|state| String|Analyst driven setting on the control. Possible values are: `Default`, `Ignored`, `ThirdParty`, `Reviewed`.|
| vendorInformation | [securityVendorInformation](../resources/securityvendorinformation.md) | Complex type containing details about the security product/service vendor, provider, and subprovider (for example, vendor=Microsoft; provider=SecureScore;). **Provider and vendor fields are required.** |


## Response

If successful, this method returns a `204 No Content` response code.

If the optional request header is used, the method returns a `200 OK` response code and the updated [secureScoreControlProfiles](../resources/securescorecontrolprofile.md) object in the response body.

## Example

### Example 1: Request without Prefer header

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "securescorecontrolprofiles_update_1",
  "sampleKeys": ["NonOwnerAccess"]
}-->

```http
PATCH https://graph.microsoft.com/v1.0/security/secureScoreControlProfiles/NonOwnerAccess
Content-type: application/json

{
  "assignedTo": "",
  "comment": "control is reviewed",
  "state": "Reviewed",
  "vendorInformation": {

    "provider": "SecureScore",
    "providerVersion": null,
    "subProvider": null,
    "vendor": "Microsoft"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/securescorecontrolprofiles-update-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/securescorecontrolprofiles-update-1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/securescorecontrolprofiles-update-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/securescorecontrolprofiles-update-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/securescorecontrolprofiles-update-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/securescorecontrolprofiles-update-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/securescorecontrolprofiles-update-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/securescorecontrolprofiles-update-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of a successful response.
<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

### Example 2: Request with Prefer header

#### Request

The following example shows a request that includes the `Prefer` request header.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "securescorecontrolprofiles_update_2",
  "sampleKeys": ["NonOwnerAccess"]
}-->

```http
PATCH https://graph.microsoft.com/v1.0/security/secureScoreControlProfiles/NonOwnerAccess
Content-type: application/json

{
  "assignedTo": "",
  "comment": "control is reviewed",
  "state": "Reviewed",
  "vendorInformation": {
    "provider": "SecureScore",
    "providerVersion": null,
    "subProvider": null,
    "vendor": "Microsoft"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/securescorecontrolprofiles-update-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/securescorecontrolprofiles-update-2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/securescorecontrolprofiles-update-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/securescorecontrolprofiles-update-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/securescorecontrolprofiles-update-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/securescorecontrolprofiles-update-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/securescorecontrolprofiles-update-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/securescorecontrolprofiles-update-2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response when the optional `Prefer: return=representation` request header is used.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.secureScoreControlProfile"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "NonOwnerAccess",
  "azureTenantId": "00000001-0001-0001-0001-000000000001c",
  "actionType": "Review",
  "actionUrl": "https://outlook.office365.com/NonOwnerAccessReport.aspx",
  "controlCategory": "Data",
  "title": "Review mailbox access by non-owners bi-weekly", 
  "deprecated": false,
  "implementationCost": "Low",
  "lastModifiedDateTime": null,
  "maxScore": 5.0,
  "rank": 25,
  "remediation": "Once you have opened the search tool, specify a date range and select access by <b>All non-owners</b> or <b>External users</b>",
  "remediationImpact": "This change will have no effect on your users",
  "service": "EXO",
  "threats": [
    "Account Breach",
    "Data Exfiltration",
    "Malicious Insider"
  ],
  "tier": "Core",
  "userImpact": "Low",
  "complianceInformation": null,
  "controlStateUpdates": [
    {
      "assignedTo": "",
      "comment": "control is reviewed",
      "state": "Reviewed",
      "updatedBy": "user1@contoso.com",
      "updatedDateTime": "2019-03-19T22:37:14.628799Z"
    }
  ],
  "vendorInformation": {
    "provider": "SecureScore",
    "providerVersion": null,
    "subProvider": null,
    "vendor": "Microsoft"
  }
}
```

<!--
{
  "type": "#page.annotation",
  "description": "Update secureScoreControlProfiles",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

