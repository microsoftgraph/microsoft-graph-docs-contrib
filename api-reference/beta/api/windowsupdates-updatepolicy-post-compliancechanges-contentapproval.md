---
title: "Create contentApproval"
description: "Create a new contentApproval object."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.service: "windows-10"
doc_type: apiPageType
---

# Create contentApproval
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [contentApproval](../resources/windowsupdates-contentapproval.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "windowsupdates_updatepolicy_post_compliancechanges_contentapproval" } -->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-updatepolicy-post-compliancechanges-contentapproval-permissions.md)]

[!INCLUDE [rbac-windows-updates-apis](../includes/rbac-for-apis/rbac-windows-updates-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/windows/updates/updatePolicies/{updatePolicyId}/complianceChanges
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [contentApproval](../resources/windowsupdates-contentapproval.md) object.

You can specify the following properties when you create a **contentApproval**.

|Property|Type|Description|
|:---|:---|:---|
|content|[microsoft.graph.windowsUpdates.deployableContent](../resources/windowsupdates-deployablecontent.md)|Specifies what content to deploy. Deployable content should be provided as one of the following derived types: [microsoft.graph.windowsUpdates.catalogContent](../resources/windowsupdates-catalogcontent.md).|
|deploymentSettings|[microsoft.graph.windowsUpdates.deploymentSettings](../resources/windowsupdates-deploymentsettings.md)|Settings for governing how to deploy **content**.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.windowsUpdates.contentApproval](../resources/windowsupdates-contentapproval.md) object in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_contentapproval_from_",
  "@odata.type": "microsoft.graph.windowsUpdates.contentApproval"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/a7aa99c1-34a2-850c-5223-7816fde70713/complianceChanges
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval",
  "content": {
    "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
    "catalogEntry": {
      "@odata.type": "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry", 
      "id": "6b7e60db-a8e4-426a-9aed-bd12b5c0b9d4"
    }
  },
  "deploymentSettings": {},
    "schedule": {
      "startDateTime": "String (timestamp)",
      "gradualRollout": {
        "@odata.type": "#microsoft.graph.windowsUpdates.dateDrivenRolloutSettings",
        "endDateTime": "String (timestamp)"
      }
   }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-contentapproval-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-contentapproval-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-contentapproval-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-contentapproval-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-contentapproval-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-contentapproval-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-contentapproval-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-contentapproval-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.contentApproval"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval",
    "id": "6b73d038-68bc-4f0b-8b94-72a26f1e879d",
    "createdDateTime": "String (timestamp)",
    "isRevoked": false,
    "revokedDateTime": "String (timestamp)",
    "content": {
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent"
    },
    "deploymentSettings": {
        "schedule": null,
        "monitoring": null,
        "contentApplicability": null,
        "userExperience": null,
        "expedite": null
    }
}
```
