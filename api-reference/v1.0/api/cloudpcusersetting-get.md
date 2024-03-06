---
title: "Get cloudPcUserSetting"
description: "Read the properties and relationships of a cloudPcUserSetting object."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# Get cloudPcUserSetting

Namespace: microsoft.graph

Read the properties and relationships of a [cloudPcUserSetting](../resources/cloudpcusersetting.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcusersetting_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcusersetting-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/userSettings/{id}
```

## Optional query parameters

This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [cloudPcUserSetting](../resources/cloudpcusersetting.md) object in the response body.

## Examples

### Example 1: Get the properties of the specified user setting

The following example shows how to get the properties of the specified user setting.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_cloudpcusersetting"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/userSettings/556092f8-92f8-5560-f892-6055f8926055
```

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcUserSetting"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.cloudPcUserSetting",
    "id": "556092f8-92f8-5560-f892-6055f8926055",
    "displayName": "Display Name value",
    "localAdminEnabled": false,
    "resetEnabled": true,
    "restorePointSetting": {
      "frequencyType": "sixteenHours",
      "userRestoreEnabled": true
    },
    "lastModifiedDateTime": "2021-02-01T10:29:57Z",
    "createdDateTime": "2021-02-01T10:29:57Z"
  }
}
```

### Example 2: Get the properties of the specified user setting and expand on the assignments

The following example shows how to get the properties of the specified user setting and expand on the assignments.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_cloudpcusersetting_2"
}
-->

``` http
GET https://graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/usersettings/b0c2d35f-3385-46c8-a6f5-6c3dfad7ffff?$expand=assignments
```

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcUserSetting"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcUserSetting",
  "id": "b0c2d35f-3385-46c8-a6f5-6c3dfad7ffff",
  "displayName": "Display Name value",
  "localAdminEnabled": false,
  "resetEnabled": true,
  "restorePointSetting": {
    "frequencyType": "sixteenHours",
    "userRestoreEnabled": true
  },
  "lastModifiedDateTime": "2021-02-01T10:29:57Z",
  "createdDateTime": "2021-02-01T10:29:57Z",
  "assignments": [
    {
      "@odata.type": "microsoft.graph.cloudPcUserSettingAssignment",
      "id": "b0c2d35f-3385-46c8-a6f5-6c3dfad7708b_64ff06de-9c00-4a5a-98b5-7f5abe26ffff",
      "createdDateTime": "2021-02-01T10:29:57Z",
      "target": {
        "@odata.type": "microsoft.graph.cloudPCManagementGroupAssignmentTarget",
        "groupId": "64ff06de-9c00-4a5a-98b5-7f5abe26bfd9"
      }
    }
  ]
}
```
