---
title: "assign action"
description: "Intune Shared Ioslobappprovisioningconfiguration Assign Api ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.prod: "Intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# assign action

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



        ## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)||
| &nbsp; &nbsp; **Apps** | DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application||
| &nbsp; &nbsp; **Apps** | DeviceManagementApps.ReadWrite.All|

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceAppManagement/iosLobAppProvisioningConfigurations/{iosLobAppProvisioningConfigurationId}/assign
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
|appProvisioningConfigurationGroupAssignments|[mobileAppProvisioningConfigGroupAssignment](../resources/intune-apps-mobileappprovisioningconfiggroupassignment.md) collection||
|iOSLobAppProvisioningConfigAssignments|[iosLobAppProvisioningConfigurationAssignment](../resources/intune-apps-ioslobappprovisioningconfigurationassignment.md) collection||



## Response
If successful, this action returns a `204 No Content` response code.

## Example

### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceAppManagement/iosLobAppProvisioningConfigurations/{iosLobAppProvisioningConfigurationId}/assign

Content-type: application/json
Content-length: 578

{
  "appProvisioningConfigurationGroupAssignments": [
    {
      "@odata.type": "#microsoft.graph.mobileAppProvisioningConfigGroupAssignment",
      "targetGroupId": "Target Group Id value",
      "id": "fad873e3-73e3-fad8-e373-d8fae373d8fa"
    }
  ],
  "iOSLobAppProvisioningConfigAssignments": [
    {
      "@odata.type": "#microsoft.graph.iosLobAppProvisioningConfigurationAssignment",
      "id": "eac7008e-008e-eac7-8e00-c7ea8e00c7ea",
      "target": {
        "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget"
      }
    }
  ]
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 204 No Content
```
