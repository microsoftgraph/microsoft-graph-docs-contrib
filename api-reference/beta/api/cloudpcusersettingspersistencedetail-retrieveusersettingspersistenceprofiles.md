---
title: "cloudPCUserSettingsPersistenceDetail: retrieveUserSettingsPersistenceProfiles"
description: "Retrieve the user storage list for Cloud PC user settings persistence under the selected Cloud PC policy assignment."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 10/20/2025
---

# cloudPCUserSettingsPersistenceDetail: retrieveUserSettingsPersistenceProfiles

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the user storage list for Cloud PC [user settings persistence](../resources/cloudpcusersettingspersistencedetail.md) under the selected Cloud PC policy assignment.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcusersettingspersistencedetail_retrieveusersettingspersistenceprofiles" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcusersettingspersistencedetail-retrieveusersettingspersistenceprofiles-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/provisioningPolicies/{id}/assignments/{assignment_id}/cloudPCUserSettingsPersistence/retrieveUserSettingsPersistenceProfiles(configurationId='{value}')
```

## Function parameters

In the request URL, provide the following function parameters with values.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
| configurationId |String | The unique identifier for the selected Cloud PC user's settings persistence. |

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudPCUserSettingsPersistenceProfile](../resources/cloudpcusersettingspersistenceprofile.md) objects in the response body.

## Examples

### Request

The following example shows a request to retrieve the user storage list for the specific [user settings persistence](../resources/cloudpcusersettingspersistencedetail.md) of a Cloud PC assignment.

<!-- {
  "blockType": "request",
  "name": "retrieveUserSettingsPersistenceProfiles_cloudpcusersettingspersistencedetail",
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies/bed92b3e-4b42-4be5-af0d-ebb2d96c432f/assignments/e9d4eb36-7056-4161-93a4-2d6f8d20d6c0/cloudPCUserSettingsPersistence/retrieveUserSettingsPersistenceProfiles(configurationId='64ff06de-9c00-4a5a-98b5-7f5abe26bfd9')
```

### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPCUserSettingsPersistenceProfile"
}
-->

``` http
HTTP/1.1 200 OK

{
  "@odata.type": "https://graph.microsoft.com/beta/$metadata#retrieveUserSettingsPersistenceProfiles",
  "value": [
    {
      "profileId": "8fd04a0b-ed49-46c0-a62d-e7980d829058",
      "userPrincipalName": "json@contoso.com",
      "profileSizeInGB": 4,
      "lastProfileAttachedDateTime": "2020-06-03T12:43:32Z",
      "status": "connected"
    },
    {
      "profileId": "95d04a0b-ed49-46c0-a62d-e7980d829058",
      "userPrincipalName": "json@contoso.com",
      "profileSizeInGB": 4,
      "lastProfileAttachedDateTime": null,
      "status": "notConnected"
    },
    {
      "profileId": "12d04a0b-ed49-46c0-a62d-e7980d829058",
      "userPrincipalName": "connie@contoso.com",
      "profileSizeInGB": 4,
      "lastProfileAttachedDateTime": "2020-11-03T12:43:32Z",
      "status": "deleting"
    }
  ]
}
```
