---
title: "Update privilegeManagementElevation"
description: "Update the properties of a privilegeManagementElevation object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update privilegeManagementElevation

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [privilegeManagementElevation](../resources/intune-devices-privilegemanagementelevation.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceManagement/privilegeManagementElevations/{privilegeManagementElevationId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [privilegeManagementElevation](../resources/intune-devices-privilegemanagementelevation.md) object.

The following table shows the properties that are required when you create the [privilegeManagementElevation](../resources/intune-devices-privilegemanagementelevation.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the managed elevation event. This will be a Guid generated based on the deviceId and eventDateTime. Example: `{7C1E0E13-D91F-4411-A164-AB5A330E87C7}`|
|deviceId|String|The Intune deviceId. Unique identifier for the managed device. Example: `92ce5047-9553-4731-817f-9b401a999a1b`|
|deviceName|String|The name associated with the device in the intune database. Example: `JOHNDOE-LAPTOP`.|
|eventDateTime|DateTimeOffset|The date and time when the application was elevated. Example:`2014-01-01T00:00:00Z`|
|elevationType|[privilegeManagementElevationType](../resources/intune-devices-privilegemanagementelevationtype.md)|Indicates the type of elevation on the application. Possible values are `undetermined`, `unmanagedElevation`, `zeroTouchElevation`, `userConfirmedElevation`, and `supportApprovedElevation`. Defaults to `undetermined`. Possible values are: `undetermined`, `unmanagedElevation`, `zeroTouchElevation`, `userConfirmedElevation`, `supportApprovedElevation`, `unknownFutureValue`.|
|filePath|String|The full file path of the application including the filename and file extension. Example: `C:\Program Files\vscode.exe`|
|upn|String|The User Principal Name of the user who performed the elevation. Example: `john@domain.com`|
|userType|[privilegeManagementEndUserType](../resources/intune-devices-privilegemanagementendusertype.md)|The type of account performed the elevation on Windows. Possible values are: `undetermined`, `azureAd`, `hybrid`, and `local`. Defaults to `undetermined`. Possible values are: `undetermined`, `azureAd`, `hybrid`, `local`, `unknownFutureValue`.|
|productName|String|The product name of the application. This value is set by the creator of the application. Example: `Visual Studio`|
|companyName|String|The company name of the application. This value is set by the creator of the application. Example: `Microsoft Corporation`|
|fileVersion|String|The version of the application. This value is set by the creator of the application. Example: `6.2211.1035.1000`|
|justification|String|The justification to elevate the application. This is an input by the user when the privilegeManagementElevationType is of type userConfirmedElevation or support approved elevation. This will be null in all other scenarios. The length is capped at 256 char, enforced on the client side. Example: `To install debug tool.`.|
|hash|String|The sha256 hash of the application. Example: `32c220482c68413fbf8290e3b1e49b0a85901cfcd62ab0738760568a2a6e8a57`|
|internalName|String|The internal name of the application. This value is set by the creator of the application. Example: `VS code`|
|fileDescription|String|The file description of the application. This value is set by the creator of the application. Example: `Editor of multiple coding languages.`|
|certificatePayload|String|The certificate payload of the application. This is computed by hashing the certificate information on the client. Example: `32c220482c68413fbf8290e3b1e49b0a85901cfcd62ab0738760568a2a6e8a50`|
|result|Int32|The result of the elevation action with 0 being success, and everything else being exit code if the elevation was unsuccessful. The value will always be 0 on all unmanaged elevation. Example: `0`. Valid values 0 to 2147483647|
|processType|[privilegeManagementProcessType](../resources/intune-devices-privilegemanagementprocesstype.md)|Indicates the type of process that is elevated. Possible values are `undefined`, `parent` and `child`. Possible values are: `undefined`, `parent`, `child`, `unknownFutureValue`.|
|ruleId|String|Unique identifier of the rule configured to run the application with elevated access|
|parentProcessName|String|The name of parent process associated with the elevated process. This is always populated for both parent and child process types|
|policyId|String|Unique Identifier of the policy configured to run the application with elevated access|
|policyName|String|The name of the policy configured to run the application in elevated access|
|systemInitiatedElevation|Boolean|To identify if the elevation is initiated by system or user interaction|



## Response
If successful, this method returns a `200 OK` response code and an updated [privilegeManagementElevation](../resources/intune-devices-privilegemanagementelevation.md) object in the response body.

## Example

### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/privilegeManagementElevations/{privilegeManagementElevationId}
Content-type: application/json
Content-length: 892

{
  "@odata.type": "#microsoft.graph.privilegeManagementElevation",
  "deviceId": "Device Id value",
  "deviceName": "Device Name value",
  "eventDateTime": "2016-12-31T23:59:23.3984029-08:00",
  "elevationType": "unmanagedElevation",
  "filePath": "File Path value",
  "upn": "Upn value",
  "userType": "azureAd",
  "productName": "Product Name value",
  "companyName": "Company Name value",
  "fileVersion": "File Version value",
  "justification": "Justification value",
  "hash": "Hash value",
  "internalName": "Internal Name value",
  "fileDescription": "File Description value",
  "certificatePayload": "Certificate Payload value",
  "result": 6,
  "processType": "parent",
  "ruleId": "Rule Id value",
  "parentProcessName": "Parent Process Name value",
  "policyId": "Policy Id value",
  "policyName": "Policy Name value",
  "systemInitiatedElevation": true
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 941

{
  "@odata.type": "#microsoft.graph.privilegeManagementElevation",
  "id": "1c22d4e2-d4e2-1c22-e2d4-221ce2d4221c",
  "deviceId": "Device Id value",
  "deviceName": "Device Name value",
  "eventDateTime": "2016-12-31T23:59:23.3984029-08:00",
  "elevationType": "unmanagedElevation",
  "filePath": "File Path value",
  "upn": "Upn value",
  "userType": "azureAd",
  "productName": "Product Name value",
  "companyName": "Company Name value",
  "fileVersion": "File Version value",
  "justification": "Justification value",
  "hash": "Hash value",
  "internalName": "Internal Name value",
  "fileDescription": "File Description value",
  "certificatePayload": "Certificate Payload value",
  "result": 6,
  "processType": "parent",
  "ruleId": "Rule Id value",
  "parentProcessName": "Parent Process Name value",
  "policyId": "Policy Id value",
  "policyName": "Policy Name value",
  "systemInitiatedElevation": true
}
```
