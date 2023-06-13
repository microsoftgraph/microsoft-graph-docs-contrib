---
title: "Update deviceAndAppManagementAssignmentFilter"
description: "Update the properties of a deviceAndAppManagementAssignmentFilter object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update deviceAndAppManagementAssignmentFilter

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md) object.

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
``` http
PATCH /deviceManagement/assignmentFilters/{deviceAndAppManagementAssignmentFilterId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md) object.

The following table shows the properties that are required when you create the [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the Assignment Filter.|
|createdDateTime|DateTimeOffset|The creation time of the assignment filter. The value cannot be modified and is automatically populated during new assignment filter process. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'.|
|lastModifiedDateTime|DateTimeOffset|Last modified time of the Assignment Filter. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'|
|displayName|String|The name of the Assignment Filter.|
|description|String|Optional description of the Assignment Filter.|
|platform|[devicePlatformType](../resources/intune-policyset-deviceplatformtype.md)|Indicates filter is applied to which flatform. Possible values are android,androidForWork,iOS,macOS,windowsPhone81,windows81AndLater,windows10AndLater,androidWorkProfile, unknown, androidAOSP,androidMobileApplicationManagement, iOSMobileApplicationManagement. Default filter will be applied to 'unknown'. Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`, `unknown`, `androidAOSP`, `androidMobileApplicationManagement`, `iOSMobileApplicationManagement`, `unknownFutureValue`.|
|rule|String|Rule definition of the assignment filter.|
|roleScopeTags|String collection|Indicates role scope tags assigned for the assignment filter.|
|payloads|[payloadByFilter](../resources/intune-policyset-payloadbyfilter.md) collection|Indicates associated assignments for a specific filter.|
|assignmentFilterManagementType|[assignmentFilterManagementType](../resources/intune-policyset-assignmentfiltermanagementtype.md)|Indicates filter is applied to either 'devices' or 'apps' management type. Possible values are devices, apps. Default filter will be applied to 'devices'. Possible values are: `devices`, `apps`, `unknownFutureValue`.|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceAndAppManagementAssignmentFilter](../resources/intune-policyset-deviceandappmanagementassignmentfilter.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/assignmentFilters/{deviceAndAppManagementAssignmentFilterId}
Content-type: application/json
Content-length: 588

{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementAssignmentFilter",
  "displayName": "Display Name value",
  "description": "Description value",
  "platform": "androidForWork",
  "rule": "Rule value",
  "roleScopeTags": [
    "Role Scope Tags value"
  ],
  "payloads": [
    {
      "@odata.type": "microsoft.graph.payloadByFilter",
      "payloadId": "Payload Id value",
      "payloadType": "deviceConfigurationAndCompliance",
      "groupId": "Group Id value",
      "assignmentFilterType": "include"
    }
  ],
  "assignmentFilterManagementType": "apps"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 760

{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementAssignmentFilter",
  "id": "819818db-18db-8198-db18-9881db189881",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "displayName": "Display Name value",
  "description": "Description value",
  "platform": "androidForWork",
  "rule": "Rule value",
  "roleScopeTags": [
    "Role Scope Tags value"
  ],
  "payloads": [
    {
      "@odata.type": "microsoft.graph.payloadByFilter",
      "payloadId": "Payload Id value",
      "payloadType": "deviceConfigurationAndCompliance",
      "groupId": "Group Id value",
      "assignmentFilterType": "include"
    }
  ],
  "assignmentFilterManagementType": "apps"
}
```
