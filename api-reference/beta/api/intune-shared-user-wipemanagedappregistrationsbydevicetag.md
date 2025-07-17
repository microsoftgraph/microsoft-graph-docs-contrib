---
title: "wipeManagedAppRegistrationsByDeviceTag action"
description: "Issues a wipe operation on an app registration with specified device tag."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# wipeManagedAppRegistrationsByDeviceTag action

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Issues a wipe operation on an app registration with specified device tag.

        ## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)||
| &nbsp; &nbsp; **MAM** | DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application||
| &nbsp; &nbsp; **MAM** | DeviceManagementApps.ReadWrite.All|

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## HTTP Request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{usersId}/wipeManagedAppRegistrationsByDeviceTag
```

## Request headers

|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body

In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Property|Type|Description|
|:---|:---|:---|
|deviceTag|String|device tag|

## Response

If successful, this action returns a `204 No Content` response code.

## Example

### Request

Here is an example of the request.

``` http
POST https://graph.microsoft.com/beta/users/{usersId}/wipeManagedAppRegistrationsByDeviceTag

Content-type: application/json
Content-length: 39

{
  "deviceTag": "Device Tag value"
}
```

### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

``` http
HTTP/1.1 204 No Content
```
