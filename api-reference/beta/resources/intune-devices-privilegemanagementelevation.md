---
title: "privilegeManagementElevation resource type"
description: "The endpoint privilege management elevation result entity representing a single elevation action on a client device."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# privilegeManagementElevation resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The endpoint privilege management elevation result entity representing a single elevation action on a client device.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List privilegeManagementElevations](../api/intune-devices-privilegemanagementelevation-list.md)|[privilegeManagementElevation](../resources/intune-devices-privilegemanagementelevation.md) collection|List properties and relationships of the [privilegeManagementElevation](../resources/intune-devices-privilegemanagementelevation.md) objects.|
|[Get privilegeManagementElevation](../api/intune-devices-privilegemanagementelevation-get.md)|[privilegeManagementElevation](../resources/intune-devices-privilegemanagementelevation.md)|Read properties and relationships of the [privilegeManagementElevation](../resources/intune-devices-privilegemanagementelevation.md) object.|
|[Create privilegeManagementElevation](../api/intune-devices-privilegemanagementelevation-create.md)|[privilegeManagementElevation](../resources/intune-devices-privilegemanagementelevation.md)|Create a new [privilegeManagementElevation](../resources/intune-devices-privilegemanagementelevation.md) object.|
|[Delete privilegeManagementElevation](../api/intune-devices-privilegemanagementelevation-delete.md)|None|Deletes a [privilegeManagementElevation](../resources/intune-devices-privilegemanagementelevation.md).|
|[Update privilegeManagementElevation](../api/intune-devices-privilegemanagementelevation-update.md)|[privilegeManagementElevation](../resources/intune-devices-privilegemanagementelevation.md)|Update the properties of a [privilegeManagementElevation](../resources/intune-devices-privilegemanagementelevation.md) object.|

## Properties
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

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privilegeManagementElevation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegeManagementElevation",
  "id": "String (identifier)",
  "deviceId": "String",
  "deviceName": "String",
  "eventDateTime": "String (timestamp)",
  "elevationType": "String",
  "filePath": "String",
  "upn": "String",
  "userType": "String",
  "productName": "String",
  "companyName": "String",
  "fileVersion": "String",
  "justification": "String",
  "hash": "String",
  "internalName": "String",
  "fileDescription": "String",
  "certificatePayload": "String",
  "result": 1024,
  "processType": "String",
  "ruleId": "String",
  "parentProcessName": "String",
  "policyId": "String",
  "policyName": "String",
  "systemInitiatedElevation": true
}
```