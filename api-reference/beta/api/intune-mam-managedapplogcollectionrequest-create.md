---
title: "Create managedAppLogCollectionRequest"
description: "Create a new managedAppLogCollectionRequest object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create managedAppLogCollectionRequest

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [managedAppLogCollectionRequest](../resources/intune-mam-managedapplogcollectionrequest.md) object.

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
POST /deviceAppManagement/managedAppRegistrations/{managedAppRegistrationId}/managedAppLogCollectionRequests
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the managedAppLogCollectionRequest object.

The following table shows the properties that are required when you create the managedAppLogCollectionRequest.

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the managed app log collection request. This id is assigned during request creation time. Read-only.|
|managedAppRegistrationId|String|The unique identifier of the app instance for which diagnostic was collected.|
|status|String|Indicates the status for the app log collection request - pending, completed or failed. Default is pending.|
|requestedBy|String|The user principal name associated with the request for the managed application log collection.|
|requestedDateTime|DateTimeOffset|DateTime of when the log upload request was received. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only.|
|completedDateTime|DateTimeOffset|DateTime of when the log upload request was completed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only.|
|userLogUploadConsent|[managedAppLogUploadConsent](../resources/intune-mam-managedapploguploadconsent.md)|Indicates whether the user associated with the device provided consent for the log collection. Possible values are: `default`, `declined`, `accepted`, `unknownFutureValue`.|
|uploadedLogs|[managedAppLogUpload](../resources/intune-mam-managedapplogupload.md) collection|The collection of log upload results as reported by each component on the device. Such components can be the application itself, the Mobile Application Management (MAM) SDK, and other on-device components that are requested to upload diagnostic logs.|
|version|String|Version of the entity.|



## Response
If successful, this method returns a `201 Created` response code and a [managedAppLogCollectionRequest](../resources/intune-mam-managedapplogcollectionrequest.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceAppManagement/managedAppRegistrations/{managedAppRegistrationId}/managedAppLogCollectionRequests
Content-type: application/json
Content-length: 646

{
  "@odata.type": "#microsoft.graph.managedAppLogCollectionRequest",
  "managedAppRegistrationId": "Managed App Registration Id value",
  "status": "Status value",
  "requestedBy": "Requested By value",
  "requestedDateTime": "2017-01-01T00:01:49.2071853-08:00",
  "completedDateTime": "2016-12-31T23:58:52.3534526-08:00",
  "userLogUploadConsent": "declined",
  "uploadedLogs": [
    {
      "@odata.type": "microsoft.graph.managedAppLogUpload",
      "managedAppComponent": "Managed App Component value",
      "status": "partiallyCompleted",
      "referenceId": "Reference Id value"
    }
  ],
  "version": "Version value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 695

{
  "@odata.type": "#microsoft.graph.managedAppLogCollectionRequest",
  "id": "95b5bd26-bd26-95b5-26bd-b59526bdb595",
  "managedAppRegistrationId": "Managed App Registration Id value",
  "status": "Status value",
  "requestedBy": "Requested By value",
  "requestedDateTime": "2017-01-01T00:01:49.2071853-08:00",
  "completedDateTime": "2016-12-31T23:58:52.3534526-08:00",
  "userLogUploadConsent": "declined",
  "uploadedLogs": [
    {
      "@odata.type": "microsoft.graph.managedAppLogUpload",
      "managedAppComponent": "Managed App Component value",
      "status": "partiallyCompleted",
      "referenceId": "Reference Id value"
    }
  ],
  "version": "Version value"
}
```
