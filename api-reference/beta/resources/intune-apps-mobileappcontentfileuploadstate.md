---
title: "mobileAppContentFileUploadState enum type"
description: "Contains properties for upload request states."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: enumPageType
---

# mobileAppContentFileUploadState enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for upload request states.

## Members
|Member|Value|Description|
|:---|:---|:---|
|success|0||
|transientError|1||
|error|2||
|unknown|3||
|azureStorageUriRequestSuccess|100||
|azureStorageUriRequestPending|101||
|azureStorageUriRequestFailed|102||
|azureStorageUriRequestTimedOut|103||
|azureStorageUriRenewalSuccess|200||
|azureStorageUriRenewalPending|201||
|azureStorageUriRenewalFailed|202||
|azureStorageUriRenewalTimedOut|203||
|commitFileSuccess|300||
|commitFilePending|301||
|commitFileFailed|302||
|commitFileTimedOut|303||