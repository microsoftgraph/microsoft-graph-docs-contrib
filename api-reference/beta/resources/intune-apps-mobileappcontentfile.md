---
title: "mobileAppContentFile resource type"
description: "Contains properties for a single installer file that is associated with a given mobileAppContent version."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# mobileAppContentFile resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for a single installer file that is associated with a given mobileAppContent version.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileAppContentFiles](../api/intune-apps-mobileappcontentfile-list.md)|[mobileAppContentFile](../resources/intune-apps-mobileappcontentfile.md) collection|List properties and relationships of the [mobileAppContentFile](../resources/intune-apps-mobileappcontentfile.md) objects.|
|[Get mobileAppContentFile](../api/intune-apps-mobileappcontentfile-get.md)|[mobileAppContentFile](../resources/intune-apps-mobileappcontentfile.md)|Read properties and relationships of the [mobileAppContentFile](../resources/intune-apps-mobileappcontentfile.md) object.|
|[Create mobileAppContentFile](../api/intune-apps-mobileappcontentfile-create.md)|[mobileAppContentFile](../resources/intune-apps-mobileappcontentfile.md)|Create a new [mobileAppContentFile](../resources/intune-apps-mobileappcontentfile.md) object.|
|[Delete mobileAppContentFile](../api/intune-apps-mobileappcontentfile-delete.md)|None|Deletes a [mobileAppContentFile](../resources/intune-apps-mobileappcontentfile.md).|
|[Update mobileAppContentFile](../api/intune-apps-mobileappcontentfile-update.md)|[mobileAppContentFile](../resources/intune-apps-mobileappcontentfile.md)|Update the properties of a [mobileAppContentFile](../resources/intune-apps-mobileappcontentfile.md) object.|
|[commit action](../api/intune-apps-mobileappcontentfile-commit.md)|None|Commits a file of a given app.|
|[renewUpload action](../api/intune-apps-mobileappcontentfile-renewupload.md)|None|Renews the SAS URI for an application file upload.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|azureStorageUri|String|Indicates the Azure Storage URI that the file is uploaded to. Created by the service upon receiving a valid mobileAppContentFile. Read-only. This property is read-only.|
|isCommitted|Boolean|A value indicating whether the file is committed. A committed app content file has been fully uploaded and validated by the Intune service. TRUE means that app content file is committed, FALSE means that app content file is not committed. Defaults to FALSE. Read-only. This property is read-only.|
|id|String|The unique identifier for this mobileAppContentFile. This id is assigned during creation of the mobileAppContentFile. Read-only. This property is read-only.|
|createdDateTime|DateTimeOffset|Indicates created date and time associated with app content file, in ISO 8601 format. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Read-only. This property is read-only.|
|name|String|Indicates the name of the file.|
|size|Int64|The size of the file prior to encryption. To be deprecated, please use sizeInBytes property instead.|
|sizeEncrypted|Int64|The size of the file after encryption. To be deprecated, please use sizeEncryptedInBytes property instead.|
|sizeInBytes|Int64|Indicates the original size of the file, in bytes. Valid values 0 to 9.22337203685478E+18|
|sizeEncryptedInBytes|Int64|Indicates the size of the file after encryption, in bytes. Valid values 0 to 9.22337203685478E+18|
|azureStorageUriExpirationDateTime|DateTimeOffset|Indicates the date and time when the Azure storage URI expires, in ISO 8601 format. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Read-only. This property is read-only.|
|manifest|Binary|Indicates the manifest information, containing file metadata.|
|uploadState|[mobileAppContentFileUploadState](../resources/intune-apps-mobileappcontentfileuploadstate.md)|Indicates the state of the current upload request. Possible values are: success, transientError, error, unknown, azureStorageUriRequestSuccess, azureStorageUriRequestPending, azureStorageUriRequestFailed, azureStorageUriRequestTimedOut, azureStorageUriRenewalSuccess, azureStorageUriRenewalPending, azureStorageUriRenewalFailed, azureStorageUriRenewalTimedOut, commitFileSuccess, commitFilePending, commitFileFailed, commitFileTimedOut. Default value is success. This property is read-only. Possible values are: `success`, `transientError`, `error`, `unknown`, `azureStorageUriRequestSuccess`, `azureStorageUriRequestPending`, `azureStorageUriRequestFailed`, `azureStorageUriRequestTimedOut`, `azureStorageUriRenewalSuccess`, `azureStorageUriRenewalPending`, `azureStorageUriRenewalFailed`, `azureStorageUriRenewalTimedOut`, `commitFileSuccess`, `commitFilePending`, `commitFileFailed`, `commitFileTimedOut`.|
|isFrameworkFile|Boolean|A value indicating whether the file is a framework file. To be deprecated.|
|isDependency|Boolean|Indicates whether this content file is a dependency for the main content file. TRUE means that the content file is a dependency, FALSE means that the content file is not a dependency and is the main content file. Defaults to FALSE.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppContentFile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppContentFile",
  "azureStorageUri": "String",
  "isCommitted": true,
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "name": "String",
  "size": 1024,
  "sizeEncrypted": 1024,
  "sizeInBytes": 1024,
  "sizeEncryptedInBytes": 1024,
  "azureStorageUriExpirationDateTime": "String (timestamp)",
  "manifest": "binary",
  "uploadState": "String",
  "isFrameworkFile": true,
  "isDependency": true
}
```