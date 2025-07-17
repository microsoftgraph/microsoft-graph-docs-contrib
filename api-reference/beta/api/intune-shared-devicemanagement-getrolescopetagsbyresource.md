---
title: "getRoleScopeTagsByResource function"
description: "Intune Shared Devicemanagement Getrolescopetagsbyresource Api ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# getRoleScopeTagsByResource function

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.


[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

        ## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)||
| &nbsp; &nbsp; **Role-based access control (RBAC)** | DeviceManagementRBAC.ReadWrite.All, DeviceManagementRBAC.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application||
| &nbsp; &nbsp; **Role-based access control (RBAC)** | DeviceManagementRBAC.ReadWrite.All, DeviceManagementRBAC.Read.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/getRoleScopeTagsByResource
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Property|Type|Description|
|:---|:---|:---|
|resource|String||



## Response
If successful, this function returns a `200 OK` response code and a [roleScopeTag](../resources/intune-rbac-rolescopetag.md) collection in the response body.

## Example
### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/getRoleScopeTagsByResource(resource='parameterValue')
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 231

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.roleScopeTag",
      "id": "9ed1e179-e179-9ed1-79e1-d19e79e1d19e",
      "displayName": "Display Name value",
      "description": "Description value"
    }
  ]
}
```
