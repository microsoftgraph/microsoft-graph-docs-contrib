---
title: "cloudPCUserSettingsPersistenceDetail: batchCleanupUserSettingsPersistenceProfile"
description: "Delete a list of selected user settings persistence profiles that aren't attached to a specific user's Cloud PC in the Cloud PC policy assignment."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 10/20/2025
---

# cloudPCUserSettingsPersistenceDetail: batchCleanupUserSettingsPersistenceProfile

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a list of selected [user settings persistence](../resources/cloudpcusersettingspersistencedetail.md) profiles that aren't attached to a specific user's Cloud PC in the Cloud PC policy assignment.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcusersettingspersistencedetail_batchcleanupusersettingspersistenceprofile" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcusersettingspersistencedetail-batchcleanupusersettingspersistenceprofile-permissions.md)]

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
| cloudProfileIds  |String collection| The list of unique identifiers for specific Cloud PC user settings persistence profiles. |
| configurationId  |String |The unique identifier for the Cloud PC user settings persistence configuration. |

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request to delete user storage profiles from the user settings persistence of a Cloud PC policy assignment.

<!-- {
  "blockType": "request",
  "name": "batchcleanupusersettingspersistenceprofile_cloudpcusersettingspersistencedetail",
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies/bed92b3e-4b42-4be5-af0d-ebb2d96c432f/assignments/e9d4eb36-7056-4161-93a4-2d6f8d20d6c0/cloudPCUserSettingsPersistence/batchCleanupUserSettingsPersistenceProfile
Content-Type: application/json

{
  "configurationId": "64ff06de-9c00-4a5a-98b5-7f5abe26bfd9",
  "cloudProfileIds": ["7e8c3054-bda1-4e37-81c5-7d1b080a8849", "568c3054-bda1-4e37-81c5-7d1b080a8849"]
}
```

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
