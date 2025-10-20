---
title: "cloudPcProvisioningPolicy: batchCleanupUserSettingsPersistenceProfile"
description: "Delete a list of selected user settings persistence profiles that are not attached to specific user's Cloud PC in specific Cloud PC's policy assingmnet of user settings persistence."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 04/05/2024
---

# cloudPcProvisioningPolicy: batchCleanupUserSettingsPersistenceProfile

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a list of cloud proifles that are not attached to specific user's Cloud PC in specific Cloud PC's policy assingmnet of user settings persistence


[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcprovisioningpolicy_batchcleanupusersettingspersistenceprofile" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcprovisioningpolicy-batchcleanupusersettingspersistenceprofile-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /deviceManagement/virtualEndpoint/provisioningPolicies/{id}/assignments/{assignment_id}/cloudPCUserSettingsPersistence/batchCleanupUserSettingsPersistenceProfile
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this method.

|Property|Type|Description|
|:---|:---|:---|
| configurationid  |String | The unique identifier for Cloud PC user settings persistence configuration.  |
| cloudProfileIds  |String Collection| The list of unique identifiers for Cloud PC user settings persistence specific profile.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "batchcleanupusersettingspersistenceprofile_cloudpcprovisioningpolicy",
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies/{id}/assignments/{assignment_id}/cloudPCUserSettingsPersistence/batchCleanupUserSettingsPersistenceProfile
Content-Type: application/json

{
    "configurationId": "64ff06de-9c00-4a5a-98b5-7f5abe26bfd9",
    "cloudProfileIds":["7e8c3054-bda1-4e37-81c5-7d1b080a8849", "568c3054-bda1-4e37-81c5-7d1b080a8849"],
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/batchcleanupusersettingspersistenceprofile-cloudpcprovisioningpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/batchcleanupusersettingspersistenceprofile-cloudpcprovisioningpolicy-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/batchcleanupusersettingspersistenceprofile-cloudpcprovisioningpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/batchcleanupusersettingspersistenceprofile-cloudpcprovisioningpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/batchcleanupusersettingspersistenceprofile-cloudpcprovisioningpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/batchcleanupusersettingspersistenceprofile-cloudpcprovisioningpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/batchcleanupusersettingspersistenceprofile-cloudpcprovisioningpolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
