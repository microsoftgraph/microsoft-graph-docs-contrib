---
title: "cloudPcProvisioningPolicy: retrieveusersettingspersistenceprofileusage"
description: "Retrieve the usage of Cloud PC user settings persistence in the selected Cloud PC's policy assignment."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 04/05/2024
---

# cloudPcProvisioningPolicy: retrieveusersettingspersistenceprofileusage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the usage of Cloud PC user settings persistence in the selected Cloud PC's policy assignment.


[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcprovisioningpolicy_retrieveusersettingspersistenceprofileusage" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcprovisioningpolicy-retrieveusersettingspersistenceprofileusage-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/provisioningPolicies/{id}/assignments/{assignment_id}/cloudPCUserSettingsPersistence/retrieveusersettingspersistenceprofileusage
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
| configurationid  |String | The unique identifier for the selected Cloud PC user settings persistence.   |

## Response

If successful, this method returns a `200 OK` response code and a [cloudpcusersettingspersistenceusageresult](../resources/cloudpcusersettingspersistenceusageresult.md) in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "retrieveusersettingspersistenceprofileusage_cloudpcprovisioningpolicy",
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies/{id}/assignments/{assignment_id}/cloudPCUserSettingsPersistence/retrieveUserSettingsPersistenceProfileUsage(configurationId='64ff06de-9c00-4a5a-98b5-7f5abe26bfd9')
Content-Type: application/json


```

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudpcusersettingspersistenceusageresult"
}
-->

``` http
HTTP/1.1 200 OK

{
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#retrieveUserSettingsPersistenceProfileUsage",
    "totalAllocatedStorageInGB": 1200,
    "remainingAvailableStorageInGB": 100,
    "usedStorageInGB": 1100
}
```
