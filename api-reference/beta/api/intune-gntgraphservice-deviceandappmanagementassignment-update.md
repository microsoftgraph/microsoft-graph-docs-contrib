---
title: "Update deviceAndAppManagementAssignment"
description: "Update the properties of a deviceAndAppManagementAssignment object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update deviceAndAppManagementAssignment

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [deviceAndAppManagementAssignment](../resources/intune-gntgraphservice-deviceandappmanagementassignment.md) object.

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
PATCH /deviceManagement/targetPayloadAssignments/{deviceAndAppManagementAssignmentId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [deviceAndAppManagementAssignment](../resources/intune-gntgraphservice-deviceandappmanagementassignment.md) object.

The following table shows the properties that are required when you create the [deviceAndAppManagementAssignment](../resources/intune-gntgraphservice-deviceandappmanagementassignment.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique system generated identifier for the assignment. Read-Only.|
|payloadId|String|Indicates the identifier of a payload assigned to a target. Read-Only.|
|payloadDisplayName|String|Indicates the display name of a payload assigned to a target. Read-Only.|
|payloadDescription|String|Indicates the description of a payload assigned to a target. Read-Only.|
|assignmentFilterDisplayName|String|Indicates the display name of an assignment filter assigned to a target. Read-Only.|
|payloadTypeName|[deviceAndAppManagementPayloadType](../resources/intune-gntgraphservice-deviceandappmanagementpayloadtype.md)|Indicates the type of payload being returned. For instance, SettingCatalog, SecurityBaseline, Antivirus and others. Read-Only. Possible values are: `unknown`, `settingsCatalog`, `securityBaseline`, `antivirus`, `diskEncryption`, `attackSurfaceReduction`, `firewall`, `endpointDetectionAndResponse`, `compliancePolicy`, `deviceRestrictions`, `unknownFutureValue`.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|Indicates the target for a payload. A payload can be directly assigned to a target or can be inherited. Read-Only.|
|assignmentLinkType|[deviceAndAppManagementAssignmentLinkType](../resources/intune-gntgraphservice-deviceandappmanagementassignmentlinktype.md)|Default is unknown. Indicates if a payload is directly assigned to a target or is an inherited one. Read-Only. Possible values are: `unknown`, `direct`, `inherited`, `unknownFutureValue`.|
|managementArea|[deviceAndAppManagementArea](../resources/intune-gntgraphservice-deviceandappmanagementarea.md)|Default is unknown. Indicates group of related payloads. These payloads can conflict when applied to a target settings. Conflict settings are used to prioritize payloads in such scenarios. Read-Only. Possible values are: `unknown`, `deviceConfiguration`, `app`, `compliance`, `unknownFutureValue`.|
|platformType|[devicePlatformType](../resources/intune-gntgraphservice-deviceplatformtype.md)|Indicates the platform on which a payload is targeted to. Possible values are android, androidForWork, iOS, macOS, windowsPhone81, windows81AndLater, windows10AndLater, androidWorkProfile, androidAOSP, androidMobileApplicationManagement, iOSMobileApplicationManagement, windowsMobileApplicationManagement. Read-Only. Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`, `unknown`, `androidAOSP`, `androidMobileApplicationManagement`, `iOSMobileApplicationManagement`, `unknownFutureValue`, `windowsMobileApplicationManagement`.|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceAndAppManagementAssignment](../resources/intune-gntgraphservice-deviceandappmanagementassignment.md) object in the response body.

## Example

### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/targetPayloadAssignments/{deviceAndAppManagementAssignmentId}
Content-type: application/json
Content-length: 967

{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementAssignment",
  "payloadId": "Payload Id value",
  "payloadDisplayName": "Payload Display Name value",
  "payloadDescription": "Payload Description value",
  "assignmentFilterDisplayName": "Assignment Filter Display Name value",
  "payloadTypeName": "settingsCatalog",
  "target": {
    "@odata.type": "microsoft.graph.organizationalUnitAssignmentTarget",
    "deviceAndAppManagementAssignmentFilterId": "Device And App Management Assignment Filter Id value",
    "deviceAndAppManagementAssignmentFilterType": "include",
    "organizationalUnitId": "Organizational Unit Id value",
    "assignmentConflictSetting": {
      "@odata.type": "microsoft.graph.organizationalUnitAssignmentConflictSetting",
      "assignmentOverride": "denied",
      "versionNumber": 13
    }
  },
  "assignmentLinkType": "direct",
  "managementArea": "deviceConfiguration",
  "platformType": "androidForWork"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1016

{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementAssignment",
  "id": "34a07b9f-7b9f-34a0-9f7b-a0349f7ba034",
  "payloadId": "Payload Id value",
  "payloadDisplayName": "Payload Display Name value",
  "payloadDescription": "Payload Description value",
  "assignmentFilterDisplayName": "Assignment Filter Display Name value",
  "payloadTypeName": "settingsCatalog",
  "target": {
    "@odata.type": "microsoft.graph.organizationalUnitAssignmentTarget",
    "deviceAndAppManagementAssignmentFilterId": "Device And App Management Assignment Filter Id value",
    "deviceAndAppManagementAssignmentFilterType": "include",
    "organizationalUnitId": "Organizational Unit Id value",
    "assignmentConflictSetting": {
      "@odata.type": "microsoft.graph.organizationalUnitAssignmentConflictSetting",
      "assignmentOverride": "denied",
      "versionNumber": 13
    }
  },
  "assignmentLinkType": "direct",
  "managementArea": "deviceConfiguration",
  "platformType": "androidForWork"
}
```