---
title: "Update privilegeManagementElevationRequest"
description: "Update the properties of a privilegeManagementElevationRequest object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update privilegeManagementElevationRequest

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [privilegeManagementElevationRequest](../resources/intune-epmgraphapiservice-privilegemanagementelevationrequest.md) object.

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
``` http
PATCH /deviceManagement/elevationRequests/{privilegeManagementElevationRequestId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [privilegeManagementElevationRequest](../resources/intune-epmgraphapiservice-privilegemanagementelevationrequest.md) object.

The following table shows the properties that are required when you create the [privilegeManagementElevationRequest](../resources/intune-epmgraphapiservice-privilegemanagementelevationrequest.md).

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



## Response
If successful, this method returns a `200 OK` response code and an updated [privilegeManagementElevationRequest](../resources/intune-epmgraphapiservice-privilegemanagementelevationrequest.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/elevationRequests/{privilegeManagementElevationRequestId}
Content-type: application/json
Content-length: 1358

{
  "@odata.type": "#microsoft.graph.privilegeManagementElevationRequest",
  "requestedByUserId": "Requested By User Id value",
  "requestedOnDeviceId": "Requested On Device Id value",
  "requestedByUserPrincipalName": "Requested By User Principal Name value",
  "deviceName": "Device Name value",
  "requestCreatedDateTime": "2017-01-01T00:00:35.2743776-08:00",
  "requestLastModifiedDateTime": "2016-12-31T23:58:50.6194179-08:00",
  "requestJustification": "Request Justification value",
  "applicationDetail": {
    "@odata.type": "microsoft.graph.applicationDetail",
    "fileHash": "File Hash value",
    "fileName": "File Name value",
    "filePath": "File Path value",
    "fileDescription": "File Description value",
    "publisherName": "Publisher Name value",
    "publisherCert": "Publisher Cert value",
    "productName": "Product Name value",
    "productInternalName": "Product Internal Name value",
    "productVersion": "Product Version value"
  },
  "status": "pending",
  "reviewCompletedByUserId": "Review Completed By User Id value",
  "reviewCompletedByUserPrincipalName": "Review Completed By User Principal Name value",
  "reviewCompletedDateTime": "2016-12-31T23:59:07.609607-08:00",
  "requestExpiryDateTime": "2017-01-01T00:02:44.7662751-08:00",
  "reviewerJustification": "Reviewer Justification value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1407

{
  "@odata.type": "#microsoft.graph.privilegeManagementElevationRequest",
  "id": "3df245af-45af-3df2-af45-f23daf45f23d",
  "requestedByUserId": "Requested By User Id value",
  "requestedOnDeviceId": "Requested On Device Id value",
  "requestedByUserPrincipalName": "Requested By User Principal Name value",
  "deviceName": "Device Name value",
  "requestCreatedDateTime": "2017-01-01T00:00:35.2743776-08:00",
  "requestLastModifiedDateTime": "2016-12-31T23:58:50.6194179-08:00",
  "requestJustification": "Request Justification value",
  "applicationDetail": {
    "@odata.type": "microsoft.graph.applicationDetail",
    "fileHash": "File Hash value",
    "fileName": "File Name value",
    "filePath": "File Path value",
    "fileDescription": "File Description value",
    "publisherName": "Publisher Name value",
    "publisherCert": "Publisher Cert value",
    "productName": "Product Name value",
    "productInternalName": "Product Internal Name value",
    "productVersion": "Product Version value"
  },
  "status": "pending",
  "reviewCompletedByUserId": "Review Completed By User Id value",
  "reviewCompletedByUserPrincipalName": "Review Completed By User Principal Name value",
  "reviewCompletedDateTime": "2016-12-31T23:59:07.609607-08:00",
  "requestExpiryDateTime": "2017-01-01T00:02:44.7662751-08:00",
  "reviewerJustification": "Reviewer Justification value"
}
```
