---
title: "privilegeManagementElevationRequest resource type"
description: "These are elevation approval requests for EPM support arbitrated scenario initiated by IW user that admins can take action on."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# privilegeManagementElevationRequest resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

These are elevation approval requests for EPM support arbitrated scenario initiated by IW user that admins can take action on.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List privilegeManagementElevationRequests](../api/intune-epmgraphapiservice-privilegemanagementelevationrequest-list.md)|[privilegeManagementElevationRequest](../resources/intune-epmgraphapiservice-privilegemanagementelevationrequest.md) collection|List properties and relationships of the [privilegeManagementElevationRequest](../resources/intune-epmgraphapiservice-privilegemanagementelevationrequest.md) objects.|
|[Get privilegeManagementElevationRequest](../api/intune-epmgraphapiservice-privilegemanagementelevationrequest-get.md)|[privilegeManagementElevationRequest](../resources/intune-epmgraphapiservice-privilegemanagementelevationrequest.md)|Read properties and relationships of the [privilegeManagementElevationRequest](../resources/intune-epmgraphapiservice-privilegemanagementelevationrequest.md) object.|
|[getAllElevationRequests action](../api/intune-epmgraphapiservice-privilegemanagementelevationrequest-getallelevationrequests.md)|[privilegeManagementElevationRequest](../resources/intune-epmgraphapiservice-privilegemanagementelevationrequest.md) collection||
|[approve action](../api/intune-epmgraphapiservice-privilegemanagementelevationrequest-approve.md)|[privilegeManagementElevationRequest](../resources/intune-epmgraphapiservice-privilegemanagementelevationrequest.md)||
|[deny action](../api/intune-epmgraphapiservice-privilegemanagementelevationrequest-deny.md)|[privilegeManagementElevationRequest](../resources/intune-epmgraphapiservice-privilegemanagementelevationrequest.md)||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The Unique identifier for elevation requests. This id is assigned at elevation request creation time and is auto generated.For example: 'A482366F-80DA-406F-97DB-E7AAC7DC8BEA'. Returned by default. Read-only|
|requestedByUserId|String|The Azure Active Directory (AAD) identifier of the end user who is requesting this elevation. For example: 'F1A57311-B9EB-45B7-9415-8555E68EDC9E'. Returned by default. Read-only.|
|requestedOnDeviceId|String|The Intune Device Identifier of the managed device used to initiate the elevation request. For example: '90F5F6E8-CA09-4811-97F6-4D0DD532D916'. Returned by default. Read-only.|
|requestedByUserPrincipalName|String|The User Principal Name (UPN) of the end user who requested this elevation. For example: 'user1@contoso.com'. Returned by default. Read-only.|
|deviceName|String|The device name used to initiate the elevation request. For example: 'cotonso-laptop'. Returned by default. Read-only.|
|requestCreatedDateTime|DateTimeOffset|The date and time when the elevation request was submitted/created. The value cannot be modified and is automatically populated when the elevation request is submitted/created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only.|
|requestLastModifiedDateTime|DateTimeOffset|The date and time when the elevation request was either submitted/created or approved/denied. The value cannot be modified and is automatically populated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only.|
|requestJustification|String|Justification provided by the end user for the elevation request. For example :'Need to elevate to install microsoft word'. Read-only.|
|applicationDetail|[applicationDetail](../resources/intune-epmgraphapiservice-applicationdetail.md)|Details of the application which is being requested to elevate, allowing the admin to understand the identity of the application. It includes file info such as FilePath, FileHash, FilePublisher, and etc. Returned by default. Read-only.|
|status|[elevationRequestState](../resources/intune-epmgraphapiservice-elevationrequeststate.md)|This indicates the current state of the elevation request. Possible values are: 'none', 'pending', 'approved', 'denied' or 'expired'. Defaults to 'none'. Returned by default. Read-only. Possible values are: `none`, `pending`, `approved`, `denied`, `expired`, `unknownFutureValue`, `revoked`.|
|reviewCompletedByUserId|String|This is the Azure Active Directory (AAD) user id of the administrator who approved or denied the request. For example: 'F1A57311-B9EB-45B7-9415-8555E68EDC9E'. This field would be String.Empty before the request is either approved or denied. Read-only.|
|reviewCompletedByUserPrincipalName|String|This is the User Principal Name (UPN) of the administrator who approved or denied the request. For example: 'admin@contoso.com'. This field would be String.Empty before the request is either approved or denied. Read-only.|
|reviewCompletedDateTime|DateTimeOffset|The DateTime for which the request was approved or denied. For example, midnight UTC on August 3rd, 2023 would look like this: '2023-08-03T00:00:00Z'. Read-only.|
|requestExpiryDateTime|DateTimeOffset|Expiration set for the request when it was created, regardless of approved or denied status. For example: '2023-08-03T14:24:22Z'. Returned by default. Returned by default. Read-only.|
|reviewerJustification|String|An optional justification provided by approver at approval or denied time. This field will be String.Empty if approver decides to not provide a justification. For example: 'Run this installer today'|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privilegeManagementElevationRequest"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegeManagementElevationRequest",
  "id": "String (identifier)",
  "requestedByUserId": "String",
  "requestedOnDeviceId": "String",
  "requestedByUserPrincipalName": "String",
  "deviceName": "String",
  "requestCreatedDateTime": "String (timestamp)",
  "requestLastModifiedDateTime": "String (timestamp)",
  "requestJustification": "String",
  "applicationDetail": {
    "@odata.type": "microsoft.graph.applicationDetail",
    "fileHash": "String",
    "fileName": "String",
    "filePath": "String",
    "fileDescription": "String",
    "publisherName": "String",
    "publisherCert": "String",
    "productName": "String",
    "productInternalName": "String",
    "productVersion": "String"
  },
  "status": "String",
  "reviewCompletedByUserId": "String",
  "reviewCompletedByUserPrincipalName": "String",
  "reviewCompletedDateTime": "String (timestamp)",
  "requestExpiryDateTime": "String (timestamp)",
  "reviewerJustification": "String"
}
```
