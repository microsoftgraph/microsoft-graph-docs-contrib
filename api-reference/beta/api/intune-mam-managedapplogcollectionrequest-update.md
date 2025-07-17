---
title: "Update managedAppLogCollectionRequest"
description: "Update the properties of a managedAppLogCollectionRequest object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update managedAppLogCollectionRequest

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [managedAppLogCollectionRequest](../resources/intune-mam-managedapplogcollectionrequest.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceAppManagement/managedAppRegistrations/{managedAppRegistrationId}/managedAppLogCollectionRequests/{managedAppLogCollectionRequestId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [managedAppLogCollectionRequest](../resources/intune-mam-managedapplogcollectionrequest.md) object.

The following table shows the properties that are required when you create the [managedAppLogCollectionRequest](../resources/intune-mam-managedapplogcollectionrequest.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the managed app log collection request. This id is assigned during request creation time. Read-only.|
|managedAppRegistrationId|String|The unique identifier of the app instance for which diagnostic logs were collected. Read-only.|
|status|String|Indicates the status for the app log collection request - pending, completed or failed. Default is pending.|
|requestedBy|String|The user principal name associated with the request for the managed application log collection. Read-only.|
|requestedByUserPrincipalName|String|The user principal name associated with the request for the managed application log collection. Read-only.|
|requestedDateTime|DateTimeOffset|DateTime of when the log upload request was received. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only.|
|completedDateTime|DateTimeOffset|DateTime of when the log upload request was completed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only.|
|userLogUploadConsent|[managedAppLogUploadConsent](../resources/intune-mam-managedapploguploadconsent.md)|Indicates whether the user associated with the device provided consent for the log collection. The user must consent before the diagnostic logs can be collected. accepted means the user consented. declined means the user declined. unknown is the default value. The Log Collection Request must be completed within 24 hours or it will be abandoned and deleted. Read-only. Possible values are: `unknown`, `declined`, `accepted`, `unknownFutureValue`.|
|uploadedLogs|[managedAppLogUpload](../resources/intune-mam-managedapplogupload.md) collection|The collection of log upload results as reported by each component on the device. Such components can be the application itself, the Mobile Application Management (MAM) SDK, and other on-device components that are requested to upload diagnostic logs. Read-only.|
|version|String|Version of the entity.|



## Response
If successful, this method returns a `200 OK` response code and an updated [managedAppLogCollectionRequest](../resources/intune-mam-managedapplogcollectionrequest.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceAppManagement/managedAppRegistrations/{managedAppRegistrationId}/managedAppLogCollectionRequests/{managedAppLogCollectionRequestId}
Content-type: application/json
Content-length: 799

{
  "@odata.type": "#microsoft.graph.managedAppLogCollectionRequest",
  "managedAppRegistrationId": "Managed App Registration Id value",
  "status": "Status value",
  "requestedBy": "Requested By value",
  "requestedByUserPrincipalName": "Requested By User Principal Name value",
  "requestedDateTime": "2017-01-01T00:01:49.2071853-08:00",
  "completedDateTime": "2016-12-31T23:58:52.3534526-08:00",
  "userLogUploadConsent": "declined",
  "uploadedLogs": [
    {
      "@odata.type": "microsoft.graph.managedAppLogUpload",
      "managedAppComponent": "Managed App Component value",
      "managedAppComponentDescription": "Managed App Component Description value",
      "status": "inProgress",
      "referenceId": "Reference Id value"
    }
  ],
  "version": "Version value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 848

{
  "@odata.type": "#microsoft.graph.managedAppLogCollectionRequest",
  "id": "95b5bd26-bd26-95b5-26bd-b59526bdb595",
  "managedAppRegistrationId": "Managed App Registration Id value",
  "status": "Status value",
  "requestedBy": "Requested By value",
  "requestedByUserPrincipalName": "Requested By User Principal Name value",
  "requestedDateTime": "2017-01-01T00:01:49.2071853-08:00",
  "completedDateTime": "2016-12-31T23:58:52.3534526-08:00",
  "userLogUploadConsent": "declined",
  "uploadedLogs": [
    {
      "@odata.type": "microsoft.graph.managedAppLogUpload",
      "managedAppComponent": "Managed App Component value",
      "managedAppComponentDescription": "Managed App Component Description value",
      "status": "inProgress",
      "referenceId": "Reference Id value"
    }
  ],
  "version": "Version value"
}
```