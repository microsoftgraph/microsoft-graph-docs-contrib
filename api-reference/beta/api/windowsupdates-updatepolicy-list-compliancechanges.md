---
title: "List complianceChanges"
description: "Get a list of the complianceChange objects and their properties."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: apiPageType
ms.date: 09/16/2024
---

# List complianceChanges
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [complianceChange](../resources/windowsupdates-compliancechange.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "windowsupdates_updatepolicy_list_compliancechanges" } -->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-updatepolicy-list-compliancechanges-permissions.md)]

[!INCLUDE [rbac-windows-updates-apis](../includes/rbac-for-apis/rbac-windows-updates-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/updatePolicies/{updatePolicyId}/complianceChanges
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.windowsUpdates.complianceChange](../resources/windowsupdates-compliancechange.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_compliancechange"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/a7aa99c1-34a2-850c-5223-7816fde70713/complianceChanges
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-compliancechange-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-compliancechange-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-compliancechange-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-compliancechange-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-compliancechange-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-compliancechange-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-compliancechange-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-compliancechange-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.windowsUpdates.complianceChange)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval",
            "id": "4ab02d3d-b63b-46ac-8b28-b4c415802f5c",
            "createdDateTime": "String (timestamp)",
            "isRevoked": false,
            "revokedDateTime": "String (timestamp)",
            "content": {
                "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
                "catalogEntry": {
                    "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateCatalogEntry",
                    "id": "a706fb9c8feea46242f0b0d9e7d718406fc99bd19ce1471f7a386e8436cad7ba",
                    "displayName": "Microsoft Corporation - System Hardware Update - 6/3/2022",
                    "deployableUntilDateTime": null,
                    "releaseDateTime": "String (timestamp)",
                    "description": "String",
                    "driverClass": "String",
                    "provider": "String",
                    "setupInformationFile": null,
                    "manufacturer": "String",
                    "version": "String",
                    "versionDateTime": "String (timestamp)Z"
                }
            },
            "deploymentSettings": {
                "monitoring": null,
                "userExperience": null,
                "expedite": null,
                "schedule": {
                    "startDateTime": "String (timestamp)",
                    "gradualRollout": {
                        "@odata.type": "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",
                        "durationBetweenOffers": "P1D",
                        "devicesPerOffer": 0
                    }
                },
                "contentApplicability": {
                    "offerWhileRecommendedBy": [
                        "microsoft"
                    ],
                    "safeguard": null
                }
            }
        }
    ]
}
```
