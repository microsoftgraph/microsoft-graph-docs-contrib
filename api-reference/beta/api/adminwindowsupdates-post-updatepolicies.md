---
title: "Create updatePolicy"
description: "Create a new updatePolicy object."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: windows-update-business
doc_type: apiPageType
---

# Create updatePolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [updatePolicy](../resources/windowsupdates-updatepolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "adminwindowsupdates_post_updatepolicies" } -->
[!INCLUDE [permissions-table](../includes/permissions/adminwindowsupdates-post-updatepolicies-permissions.md)]

[!INCLUDE [rbac-windows-updates-apis](../includes/rbac-for-apis/rbac-windows-updates-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/windows/updates/updatePolicies
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [updatePolicy](../resources/windowsupdates-updatepolicy.md) object.

You can specify the following properties when you create an **updatePolicy**.

|Property|Type|Description|
|:---|:---|:---|
|audience|[microsoft.graph.windowsUpdates.deploymentAudience](../resources/windowsupdates-deploymentaudience.md)|Specifies the audience to target.|
|complianceChanges|[microsoft.graph.windowsUpdates.complianceChange](../resources/windowsupdates-compliancechange.md) collection|Compliance changes like content approvals which result in the automatic creation of deployments using the **audience** and **deploymentSettings** of the policy.|
|complianceChangeRules|[microsoft.graph.windowsUpdates.complianceChangeRule](../resources/windowsupdates-compliancechangerule.md) collection|Rules for governing the automatic creation of compliance changes.|
|deploymentSettings|[microsoft.graph.windowsUpdates.deploymentSettings](../resources/windowsupdates-deploymentsettings.md)|Settings for governing how to deploy **content**.|

## Response

If successful, this method returns a `201 Created` response code and an [microsoft.graph.windowsUpdates.updatePolicy](../resources/windowsupdates-updatepolicy.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_updatepolicy_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies
Content-Type: application/json
Content-length: 835

{
  "@odata.type": "#microsoft.graph.windowsUpdates.updatePolicy",
  "audience": {
    "id": "8c4eb1eb-d7a3-4633-8e2f-f926e82df08e"
  },
  "complianceChanges": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval"
    }
  ],
  "complianceChangeRules": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.contentApprovalRule",
      "contentFilter": {
        "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateFilter"
      },
      "durationBeforeDeploymentStart": "P7D"
    }
  ],
  "deploymentSettings": {
    "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
    "schedule": {
      "gradualRollout": {
        "@odata.type": "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",
        "durationBetweenOffers": "P1D",
        "devicePerOffer": 1000
      }
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-updatepolicy-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-updatepolicy-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-updatepolicy-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-updatepolicy-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-updatepolicy-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-updatepolicy-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-updatepolicy-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-updatepolicy-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.updatePolicy"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/updatePolicies/$entity",
    "id": "1b35b81b-f839-4951-882a-1fbfc6446409",
    "createdDateTime": "String (timestamp)",
    "autoEnrollmentUpdateCategories": [],
    "complianceChangeRules": [
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.contentApprovalRule",
            "createdDateTime": "String (timestamp)",
            "lastEvaluatedDateTime": "String (timestamp)",
            "lastModifiedDateTime": "String (timestamp)",
            "durationBeforeDeploymentStart": "P7D",
            "contentFilter": {
                "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateFilter"
            }
        }
    ],
    "deploymentSettings": {
        "monitoring": null,
        "contentApplicability": null,
        "userExperience": null,
        "expedite": null,
        "schedule": {
            "startDateTime": "String (timestamp)",
            "gradualRollout": {
                "@odata.type": "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",
                "durationBetweenOffers": "P1D",
                "devicesPerOffer": 0
            }
        }
    }
}
```
