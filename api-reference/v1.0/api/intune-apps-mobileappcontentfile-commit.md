---
title: "commit action"
description: "Commits a file of a given app."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# commit action

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Commits a file of a given app.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementApps.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceAppManagement/mobileApps/{mobileAppId}/contentVersions/{mobileAppContentId}/files/{mobileAppContentFileId}/commit
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Property|Type|Description|
|:---|:---|:---|
|fileEncryptionInfo|[fileEncryptionInfo](../resources/intune-apps-fileencryptioninfo.md)|The file encryption info parameter key. A PowerShell script example of the file upload process using the ProfileVersion1 encryption scheme can be found at https://aka.ms/fileencryptioninfo.|



## Response
If successful, this action returns a `204 No Content` response code.

## Example

### Request
Here is an example of the request.

<!-- { "blockType": "request" , "name" : "intune_apps_mobileappcontentfile_commit_commit_action" }-->
``` http
POST https://graph.microsoft.com/v1.0/deviceAppManagement/mobileApps/5592d133-0c0e-4600-b884-17ca224c8a2e/contentVersions/e701c17c-57fa-4dd8-9280-0f71daaf440a/files/4cdcdd4b-58bb-46ce-9380-4de590a5eb42/commit

Content-type: application/json
Content-length: 399

{
  "fileEncryptionInfo": {
    "@odata.type": "microsoft.graph.fileEncryptionInfo",
    "encryptionKey": "ZW5jcnlwdGlvbktleQ==",
    "initializationVector": "aW5pdGlhbGl6YXRpb25WZWN0b3I=",
    "mac": "bWFj",
    "macKey": "bWFjS2V5",
    "profileIdentifier": "Profile Identifier value",
    "fileDigest": "ZmlsZURpZ2VzdA==",
    "fileDigestAlgorithm": "File Digest Algorithm value"
  }
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- { "blockType": "response"  }-->
``` http
HTTP/1.1 204 No Content
```
