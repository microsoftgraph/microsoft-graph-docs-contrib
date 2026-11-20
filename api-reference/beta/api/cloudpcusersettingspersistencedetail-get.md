---
title: "Get cloudPCUserSettingsPersistenceDetail"
description: "Get a specific cloudPCUserSettingsPersistenceDetail under the selected policy assignment."
author: "weicc"
ms.date: 09/07/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# Get cloudPCUserSettingsPersistenceDetail

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a specific [cloudPCUserSettingsPersistenceDetail](../resources/cloudpcusersettingspersistencedetail.md) under the selected policy assignment.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcusersettingspersistencedetail_get_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcusersettingspersistencedetail-get-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
``` http
GET /deviceManagement/virtualEndpoint/provisioningPolicies/{cloudPcProvisioningPolicy-id}/assignments/{cloudPcProvisioningPolicyAssignment-id}/userSettingsPersistenceDetail
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [cloudPCUserSettingsPersistenceDetail](../resources/cloudpcusersettingspersistencedetail.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "get_cloudpcusersettingspersistencedetail" } -->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies/b0c2d35f-3385-46c8-a6f5-6c3dfad7708b/assignments/64ff06de-9c00-4a5a-98b5-7f5abe26bfd9/userSettingsPersistenceDetail
```

### Response

The following example shows the response.

<!-- { "blockType": "response", "name": "get_cloudpcusersettingspersistencedetail", "@odata.type": "microsoft.graph.cloudPCUserSettingsPersistenceDetail" } -->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPCUserSettingsPersistenceDetail",
  "id": "7fd04a0b-ed49-46c0-a62d-e7980d829058",
  "gracePeriodEndDateTime": null,
  "storageConfiguration": {
    "storageSizingType": "dynamic",
    "allocatedStorageSizeCategory": "sixtyFourGB"
  },
  "autoCleanupDetail": {
    "autoCleanupMode": "scheduled, onQuotaExceeded",
    "inactiveProfileRetentionDays": 365
  },
  "snapshotConfiguration": {
    "autoSnapshotFrequencyInDays": 30
  }
}
```
