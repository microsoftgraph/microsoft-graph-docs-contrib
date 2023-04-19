---
title: "Delete accessPackageAssignmentRequestWorkflowExtension"
description: "Delete an accessPackageAssignmentRequestWorkflowExtension object."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Delete accessPackageAssignmentRequestWorkflowExtension
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an [accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md) object. The custom workflow extension must first be removed from any associated [policies](../resources/accesspackageassignmentpolicy.md) before it can be deleted. Follow these steps to remove the custom workflow extension from any associated policies:
1. First retrieve the accessPackageCatalogId by calling the [Get accessPackageAssignmentPolicies](accesspackageassignmentpolicy-get.md) operation and appending `?$expand=accessPackage($expand=accessPackageCatalog)` to the query. For example, `https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentPolicies?$expand=accessPackage($expand=accessPackageCatalog)`.
2. Use the access package catalog ID and retrieve the ID of the **accessPackageCustomWorkflowExtension** object that you want to delete by running the [List accessPackageCustomWorkflowExtensions](accesspackagecatalog-list-accesspackagecustomworkflowextensions.md) operation.
3. Call the [Update accessPackageAssignmentPolicy](accesspackageassignmentpolicy-update.md) operation to remove the custom workflow extension object from the policy. For an example, see [Example 3: Remove the customExtensionStageSettings from a policy](accesspackageassignmentpolicy-update.md#example-3-remove-the-customextensionstagesettings-from-a-policy).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| EntitlementManagement.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|
|Application| EntitlementManagement.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /identityGovernance/entitlementManagement/accessPackageCatalogs/{catalogId}/customAccessPackageWorkflowExtensions/{customAccessPackageWorkflowExtensionId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_accesspackageassignmentrequestworkflowextension"
}
-->
``` http
DELETE /identityGovernance/entitlementManagement/accessPackageCatalogs/32efb28c-9a7a-446c-986b-ca6528c6669d/customAccessPackageWorkflowExtensions/E3D4CE35-B16A-4E19-ADF2-616B64D336DC
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-accesspackageassignmentrequestworkflowextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-accesspackageassignmentrequestworkflowextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-accesspackageassignmentrequestworkflowextension-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-accesspackageassignmentrequestworkflowextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-accesspackageassignmentrequestworkflowextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-accesspackageassignmentrequestworkflowextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
The following is an example of the response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

