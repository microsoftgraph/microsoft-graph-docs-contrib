---
title: "cloudPCUserSettingsPersistenceDetail: bulkCreateUserProfileSnapshot"
description: "Trigger a manual snapshot for selected user settings persistence profiles as a long-running operation."
author: "weicc"
ms.date: 09/07/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPCUserSettingsPersistenceDetail: bulkCreateUserProfileSnapshot

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Trigger a manual snapshot for selected user settings persistence profiles as a long-running operation. This action is bound to the [cloudPCUserSettingsPersistenceDetail](../resources/cloudpcusersettingspersistencedetail.md) entity. The created snapshots have **snapshotType** set to `manual`.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcusersettingspersistencedetail_bulkcreateuserprofilesnapshot_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcusersettingspersistencedetail-bulkcreateuserprofilesnapshot-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
``` http
POST /deviceManagement/virtualEndpoint/provisioningPolicies/{cloudPcProvisioningPolicy-id}/assignments/{cloudPcProvisioningPolicyAssignment-id}/userSettingsPersistenceDetail/bulkCreateUserProfileSnapshot
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

|Parameter|Type|Description|
|:---|:---|:---|
|cloudProfileIds|String collection|Required. Indicates the list of unique identifiers for the user settings persistence profiles to take snapshots for. The collection must contain at least one and at most 50 items. If the collection is empty or contains more than 50 items, the API responds with `400 Bad Request` and error code `invalidCloudProfileIdCount`. Not nullable.|

## Response

If successful, this action returns a `202 Accepted` response code and a [cloudPcUserProfileSnapshotCreateBulkActionResult](../resources/cloudpcuserprofilesnapshotcreatebulkactionresult.md) object in the response body, derived from [cloudPcUserProfileBulkActionResult](../resources/cloudpcuserprofilebulkactionresult.md).

Represents the result of the **bulkCreateUserProfileSnapshot** action. Failed items are cloud profile IDs from the **cloudProfileIds** request parameter. The inherited **totalCount** and **failedCount** properties count cloud profile IDs.

If the collection is empty or contains more than 50 items, the API responds with `400 Bad Request` and error code `invalidCloudProfileIdCount`.

## Examples

### Request

The following example requests snapshots for two profiles.

<!-- { "blockType": "request", "name": "bulkcreate_cloudpcuserprofilesnapshot" } -->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies/b0c2d35f-3385-46c8-a6f5-6c3dfad7708b/assignments/64ff06de-9c00-4a5a-98b5-7f5abe26bfd9/userSettingsPersistenceDetail/bulkCreateUserProfileSnapshot
Content-Type: application/json

{
  "cloudProfileIds": [
    "8fd04a0b-ed49-46c0-a62d-e7980d829058",
    "95d04a0b-ed49-46c0-a62d-e7980d829058"
  ]
}
```

### Response

The following response indicates that one profile was rejected during input validation.

<!-- { "blockType": "response", "name": "bulkcreate_cloudpcuserprofilesnapshot", "@odata.type": "microsoft.graph.cloudPcUserProfileSnapshotCreateBulkActionResult" } -->
``` http
HTTP/1.1 202 Accepted
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcUserProfileSnapshotCreateBulkActionResult",
  "totalCount": 2,
  "failedCount": 1,
  "failedCloudProfileIds": [
    "95d04a0b-ed49-46c0-a62d-e7980d829058"
  ]
}
```
