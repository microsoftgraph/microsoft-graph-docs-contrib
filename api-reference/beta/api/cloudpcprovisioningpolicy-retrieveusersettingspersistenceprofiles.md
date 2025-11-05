---
title: "cloudPcProvisioningPolicy: retrieveUserSettingsPersistenceProfiles"
description: "Retrieve the user storage list for the Cloud PC user settings persistence under selected Cloud PC's policy assignment."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 10/20/2025
---

# cloudPcProvisioningPolicy: retrieveUserSettingsPersistenceProfiles

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the user storage list for the Cloud PC user settings persistence under selected Cloud PC's policy assignment


[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcprovisioningpolicy_retrieveusersettingspersistenceprofiles" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcprovisioningpolicy-retrieveusersettingspersistenceprofiles-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /deviceManagement/virtualEndpoint/provisioningPolicies/{id}/assignments/{assignment_id}/cloudPCUserSettingsPersistence/retrieveUserSettingsPersistenceProfiles
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
| configurationId  |String | The unique identifier for the selected Cloud PC user settings persistence.   |

## Response

If successful, this method returns a `200 OK` response code and a collection of [retrieveUserSettingsPersistenceProfile](../resources/cloudPCUserSettingsPersistenceProfile.md) objects in the response body.

## Examples

#### Request
The following example shows a request to retrieve the user storage list for a Cloud PC assignment's user settings persistence.

<!-- {
  "blockType": "request",
  "name": "retrieveUserSettingsPersistenceProfiles_cloudpcprovisioningpolicy",
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies/bed92b3e-4b42-4be5-af0d-ebb2d96c432f/assignments/e9d4eb36-7056-4161-93a4-2d6f8d20d6c0/cloudPCUserSettingsPersistence/retrieveUserSettingsPersistenceProfiles(configurationId='64ff06de-9c00-4a5a-98b5-7f5abe26bfd9')
Content-Type: application/json


```
---

#### Response


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
    "value":[
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
