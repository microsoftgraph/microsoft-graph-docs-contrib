---
title: "Get externallyAccessibleAzureBlobContainerFinding"
description: "Read the properties and relationships of an externallyAccessibleAzureBlobContainerFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: apiPageType
---

# Get externallyAccessibleAzureBlobContainerFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [externallyAccessibleAzureBlobContainerFinding](../resources/externallyaccessibleazureblobcontainerfinding.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "externallyaccessibleazureblobcontainerfinding_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/externallyaccessibleazureblobcontainerfinding-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/azure/findings/{id}/microsoft.graph.externallyAccessibleAzureBlobContainerFinding
```

## Optional query parameters
This method does not support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [externallyAccessibleAwsStorageBucketFinding](../resources/externallyaccessibleawsstoragebucketfinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_externallyaccessibleazureblobcontainerfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/azure/findings/MSxFeHRlcm5hbGx5QWNjZXNzaWJsZUF6dXJlQmxvYkNvbnRhaW5lckZpbmRpbmcsNzIzNg/microsoft.graph.externallyAccessibleAzureBlobContainerFinding
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-externallyaccessibleazureblobcontainerfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externallyAccessibleAwsStorageBucketFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.externallyAccessibleAzureBlobContainerFinding/$entity",
    "id": "MSxFeHRlcm5hbGx5QWNjZXNzaWJsZUF6dXJlQmxvYkNvbnRhaW5lckZpbmRpbmcsNzIzNg",
    "createdDateTime": "2023-10-25T19:47:57.721188Z",
    "accessibility": "public",
    "encryptionManagedBy": "microsoftStorage",
    "storageAccount": {
        "id": "L3N1YnNjcmlwdGlvbnMvNmJkZWIzNmUtMjQxNS00ZjdlLWFjMDMtNDljNTE4ZGEwZTEwL3Jlc291cmNlR3JvdXBzL2Nsb3VkLXNoZWxsLXN0b3JhZ2Utd2VzdHVzL3Byb3ZpZGVycy9NaWNyb3NvZnQuU3RvcmFnZS9zdG9yYWdlQWNjb3VudHMvYmIwNzE4MjAyM3N0b3JhZ2VhY2NvdW50L2Jsb2JTZXJ2aWNlcy9kZWZhdWx0L2NvbnRhaW5lcnMvYmIwNzE4MjkyM2NvbnRhaW5lcg",
        "externalId": "/subscriptions/6bdeb36e-2415-4f7e-ac03-49c518da0e10/resourceGroups/cloud-shell-storage-westus/providers/Microsoft.Storage/storageAccounts/bb07182023storageaccount/blobServices/default/containers/bb07182923container",
        "displayName": "cloud-shell-storage-westus//subscriptions/6bdeb36e-2415-4f7e-ac03-49c518da0e10/resourceGroups/cloud-shell-storage-westus/providers/Microsoft.Storage/storageAccounts/bb07182023storageaccount/blobServices/default/containers/bb07182923container",
        "resourceType": "Microsoft.Storage"
    }
}
```
