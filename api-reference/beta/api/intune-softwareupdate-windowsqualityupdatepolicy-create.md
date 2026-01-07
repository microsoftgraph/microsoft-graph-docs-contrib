---
title: "Create windowsQualityUpdatePolicy"
description: "Create a new windowsQualityUpdatePolicy object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Create windowsQualityUpdatePolicy

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [windowsQualityUpdatePolicy](../resources/intune-softwareupdate-windowsqualityupdatepolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/windowsQualityUpdatePolicies
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the windowsQualityUpdatePolicy object.

The following table shows the properties that are required when you create the windowsQualityUpdatePolicy.

|Property|Type|Description|
|:---|:---|:---|
|id|String|This id is assigned when creating the profile. Read-only|
|displayName|String|The display name for the policy. Max allowed length is 200 chars.|
|description|String|The description of the policy which is specified by the user. Max allowed length is 1500 chars.|
|createdDateTime|DateTimeOffset|Timestamp of when the profile was created. The value cannot be modified and is automatically populated when the profile is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. Read-only|
|lastModifiedDateTime|DateTimeOffset|Timestamp of when the profile was modified. The value cannot be modified and is automatically populated when the profile is modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. Read-only|
|roleScopeTagIds|String collection|List of the scope tag ids for this profile.|
|hotpatchEnabled|Boolean|Indicates if hotpatch is enabled for the tenants. When 'true', tenant can apply quality updates without rebooting their devices. When 'false', tenant devices will receive cold patch associated with Windows quality updates.|
|approvalSettings|[windowsQualityUpdateApprovalSetting](../resources/intune-softwareupdate-windowsqualityupdateapprovalsetting.md) collection|The list of approval settings for this policy. The maximun number of approval settings supported for one policy is 6. The expected number of approval settings for one policy from UX is 4.|



## Response
If successful, this method returns a `201 Created` response code and a [windowsQualityUpdatePolicy](../resources/intune-softwareupdate-windowsqualityupdatepolicy.md) object in the response body.

## Example

### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagement/windowsQualityUpdatePolicies
Content-type: application/json
Content-length: 539

{
  "@odata.type": "#microsoft.graph.windowsQualityUpdatePolicy",
  "displayName": "Display Name value",
  "description": "Description value",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "hotpatchEnabled": true,
  "approvalSettings": [
    {
      "@odata.type": "microsoft.graph.windowsQualityUpdateApprovalSetting",
      "windowsQualityUpdateCadence": "outOfBand",
      "windowsQualityUpdateCategory": "security",
      "approvalMethodType": "automatic",
      "deferredDeploymentInDay": 7
    }
  ]
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 711

{
  "@odata.type": "#microsoft.graph.windowsQualityUpdatePolicy",
  "id": "d1fce2c0-e2c0-d1fc-c0e2-fcd1c0e2fcd1",
  "displayName": "Display Name value",
  "description": "Description value",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "hotpatchEnabled": true,
  "approvalSettings": [
    {
      "@odata.type": "microsoft.graph.windowsQualityUpdateApprovalSetting",
      "windowsQualityUpdateCadence": "outOfBand",
      "windowsQualityUpdateCategory": "security",
      "approvalMethodType": "automatic",
      "deferredDeploymentInDay": 7
    }
  ]
}
```