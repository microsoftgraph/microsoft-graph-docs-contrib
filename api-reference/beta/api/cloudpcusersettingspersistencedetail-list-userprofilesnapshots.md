---
title: "List userProfileSnapshots"
description: "List all snapshots for a cloudPCUserSettingsPersistenceDetail resource through the userProfileSnapshots navigation property."
author: "weicc"
ms.date: 09/07/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# List userProfileSnapshots

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all [snapshots](../resources/cloudpcuserprofilesnapshot.md) for a [cloudPCUserSettingsPersistenceDetail](../resources/cloudpcusersettingspersistencedetail.md) resource through the **userProfileSnapshots** navigation property.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcusersettingspersistencedetail_list_userprofilesnapshots_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcusersettingspersistencedetail-list-userprofilesnapshots-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
``` http
GET /deviceManagement/virtualEndpoint/provisioningPolicies/{cloudPcProvisioningPolicy-id}/assignments/{cloudPcProvisioningPolicyAssignment-id}/userSettingsPersistenceDetail/userProfileSnapshots
```

## Optional query parameters

This method supports the `$select`, `$filter` (`eq` on **snapshotType**), and `$top` OData query parameters. For example, use `$filter=snapshotType eq 'manual'` to retrieve manual snapshots. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudPcUserProfileSnapshot](../resources/cloudpcuserprofilesnapshot.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "list_cloudpcuserprofilesnapshot" } -->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies/b0c2d35f-3385-46c8-a6f5-6c3dfad7708b/assignments/64ff06de-9c00-4a5a-98b5-7f5abe26bfd9/userSettingsPersistenceDetail/userProfileSnapshots
```

### Response

The following example shows the response.

<!-- { "blockType": "response", "name": "list_cloudpcuserprofilesnapshot", "@odata.type": "Collection(microsoft.graph.cloudPcUserProfileSnapshot)" } -->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.cloudPcUserProfileSnapshot)",
  "value": [
    {
      "@odata.type": "#microsoft.graph.cloudPcUserProfileSnapshot",
      "id": "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
      "cloudProfileId": "8fd04a0b-ed49-46c0-a62d-e7980d829058",
      "userPrincipalName": "connie@contoso.com",
      "snapshotType": "automatic",
      "snapshotSizeInGB": 4,
      "createdDateTime": "2026-03-29T08:00:00Z",
      "expirationDateTime": "2026-04-28T08:00:00Z",
      "lastRestoredDateTime": null
    },
    {
      "@odata.type": "#microsoft.graph.cloudPcUserProfileSnapshot",
      "id": "b2c3d4e5-f6a7-8901-bcde-f12345678901",
      "cloudProfileId": "8fd04a0b-ed49-46c0-a62d-e7980d829058",
      "userPrincipalName": "connie@contoso.com",
      "snapshotType": "manual",
      "snapshotSizeInGB": 16,
      "createdDateTime": "2026-03-30T14:30:00Z",
      "expirationDateTime": "2026-04-29T14:30:00Z",
      "lastRestoredDateTime": null
    }
  ]
}
```
