---
title: "Delete accessPackageAssignmentWorkflowExtension"
description: "Delete an accessPackageAssignmentWorkflowExtension object."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Delete accessPackageAssignmentWorkflowExtension

Namespace: microsoft.graph

Delete an [accessPackageAssignmentWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md) object. The custom workflow extension must first be removed from any associated [policies](../resources/accesspackageassignmentpolicy.md) before it can be deleted. Follow these steps to remove the custom workflow extension from any associated policies:

1. First retrieve the accessPackageCatalogId by calling the [Get accessPackageAssignmentPolicies](accesspackageassignmentpolicy-get.md) operation and appending `?$expand=accessPackage($expand=accessPackageCatalog)` to the query. For example, `https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/accessPackageAssignmentPolicies?$expand=accessPackage($expand=accessPackageCatalog)`.
2. Use the access package catalog ID and retrieve the ID of the **accessPackageCustomWorkflowExtension** object that you want to delete by running the [List accessPackageCustomWorkflowExtensions](accesspackagecatalog-list-accesspackagecustomworkflowextensions.md) operation.
3. Call the [Update accessPackageAssignmentPolicy](accesspackageassignmentpolicy-update.md) operation to remove the custom workflow extension object from the policy.

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

<!-- {
  "blockType": "request",
  "name": "delete_accesspackageassignmentworkflowextension"
}
-->
``` http
DELETE /identityGovernance/entitlementManagement/accessPackageCatalogs/32efb28c-9a7a-446c-986b-ca6528c6669d/customAccessPackageWorkflowExtensions/5FD6D8D5-E8F1-4B54-A1E6-1D0FE0B6E6EC
```

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
